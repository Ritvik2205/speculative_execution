.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 6
jmp .bb_0.1
.bb_0.1:
test dl, cl
test sil, 17
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or dl, dil
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
and al, -114
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test rax, -359674714
or al, -24
or al, 54
xor bl, -88
or bl, 127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
