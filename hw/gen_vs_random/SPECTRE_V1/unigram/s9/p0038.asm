.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ax, cx
sub rsi, rbx
adc ebx, 23
cmovnb rdx, rax
and rdx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdx]
adc cx, cx
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 96
add dx, bx
lea ax, qword ptr [rdx + rdx + 75]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
or al, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea di, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dil
imul eax, edi
and rbx, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
