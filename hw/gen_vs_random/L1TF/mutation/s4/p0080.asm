.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, dl
lea rdi, qword ptr [rdi + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
add al, -5 # instrumentation
adc cl, al
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
cmp bl, bl
cdq
imul cx, dx
test cl, cl
cmovb bx, si
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -89
jmp .bb_0.1
.bb_0.1:
cmp esi, -52
lea edx, qword ptr [rsi + rsi]
setnbe cl
xor ax, 0
or eax, 287965578
lea di, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
