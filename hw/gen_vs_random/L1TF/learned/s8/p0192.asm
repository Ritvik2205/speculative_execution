.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
and rsi, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rsi]
sub dl, 41
and cl, sil
xor bl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
