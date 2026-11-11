.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
add cl, dl
dec bl
adc cl, -85
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add al, -3
imul rax, rdi
adc bx, 52
add bl, dl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
lea bx, qword ptr [rcx]
sub ax, -1908
and rbx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rbx]
and sil, -84
add al, -6
sub dil, cl
test cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
