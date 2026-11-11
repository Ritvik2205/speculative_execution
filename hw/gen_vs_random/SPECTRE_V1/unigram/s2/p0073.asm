.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rax]
sub al, bl
add cl, -29 # instrumentation
add cl, -70 # instrumentation
setnp cl
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
btr bx, dx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 72
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
lea eax, qword ptr [rcx + rdx]
lea cx, qword ptr [rcx]
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
add al, -53 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 51
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 4
xor sil, dl
imul eax, eax, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
