.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -103 # instrumentation
cmovbe di, di
sub dl, sil
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rax]
lea di, qword ptr [rdx]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
