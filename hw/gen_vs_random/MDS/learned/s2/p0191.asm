.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rcx]
and dx, 3
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
xor dl, al
and sil, -56
and sil, -9
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
test dl, al
jmp .bb_0.1
.bb_0.1:
or dl, 51
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
test bl, -9
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
