module uim.baklava.containers.metas;

@safe:
import uim.baklava;

// Container for meta data
class DBKLMetaContainer : DBKLH5Container {
	O entries(this O)(STRINGAA[] newEntries) { 
    this.entries(newEntries.map!(a => H5Meta(a)).array); 
    return cast(O)this;
  }

  O add(this O)(STRINGAA[] newEntries...) { 
    this.add(newEntries); 
    return cast(O)this;
  }

  O add(this O)(STRINGAA[] newEntries) { 
    _entries ~= newEntries.map!(entry => cast(DH5Obj)H5Meta(entry)).array; 
    return cast(O)this;
  }
}
auto BKLMetaContainer() { return new DBKLMetaContainer; }

version(test_uim_BKLs) { unittest {
    writeln("--- Test in ", __MODULE__, "/", __LINE__);
    
/*     assert(new DBKLMetaContainer);
    assert(BKLMetaContainer);
    assert(!BKLMetaContainer.entries);
    assert(BKLMetaContainer.entries.add("abc").entries);

    assert(BKLMetaContainer.entries.add("abc").entries.length == 1);
    assert(BKLMetaContainer.entries.add(["src":"abc"]).entries.length == 1);
    assert(BKLMetaContainer.entries.add(H5Meta).entries.length == 1);

    assert(BKLMetaContainer.entries.add("abc", "xyz").entries.length == 2);
    assert(BKLMetaContainer.entries.add(["src":"abc"], ["src":"xyz"]).entries.length == 2);
    assert(BKLMetaContainer.entries.add(H5Meta, H5Meta).entries.length == 2);

    assert(BKLMetaContainer.entries.add(["abc", "xyz"]).entries.length == 2);
    assert(BKLMetaContainer.entries.add([["src":"abc"], ["src":"xyz"]]).entries.length == 2);
    assert(BKLMetaContainer.entries.add([H5Meta, H5Meta]).entries.length == 2); */
  }
}