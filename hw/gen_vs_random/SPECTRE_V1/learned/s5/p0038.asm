.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 90
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 34
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
xor dl, 71
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
sub bx, 44
or ecx, 89
lea cx, qword ptr [rbx]
cmovnbe dx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
