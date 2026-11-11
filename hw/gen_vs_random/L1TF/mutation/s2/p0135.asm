.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
cdq
imul cx, dx
cmovb bx, si
mov cl, dl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cmp bl, bl
test cl, cl
add al, -5 # instrumentation
adc cl, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
lea rdi, qword ptr [rdi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
