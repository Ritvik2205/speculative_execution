.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -66
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea dx, qword ptr [rdx]
and bl, -43
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sub al, sil
lea rsi, qword ptr [rdx + rcx + 36993]
sbb esi, 19
sbb al, bl
add al, 10
test bl, -8
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
lea bx, qword ptr [rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
