.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
cmovnp rdx, rdi
test cl, cl
add al, 3
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
add cx, dx
test cx, -17886
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
mul dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
adc dl, bl
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], ecx
bswap rbx
btr dx, si
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
