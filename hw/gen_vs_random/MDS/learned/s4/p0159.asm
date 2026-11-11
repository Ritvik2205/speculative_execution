.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 91
xor bl, dil
test al, 127
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
xor al, cl
xor al, bl
jmp .bb_0.2
.bb_0.2:
btr eax, esi
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
or sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
