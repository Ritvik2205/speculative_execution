.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
add al, -5 # instrumentation
adc cl, al
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
cmovb bx, si
test cl, cl
mov cl, dl
cdq
cmp bl, bl
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
lea rdi, qword ptr [rdi + rdx]
imul cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
