.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
test sil, 17
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rbx], eax
xor al, 9
and rdx, 21
xor dl, cl
test cl, 54
and dil, -62
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
or sil, -49
test dil, 46
test al, dl
xor bl, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
