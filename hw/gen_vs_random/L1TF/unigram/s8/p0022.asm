.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdi]
add al, 87 # instrumentation
cmovo rax, rdi
and rax, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
add bl, -49 # instrumentation
adc bl, cl
cwde
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
bswap rcx
btr ax, dx
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
dec ecx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
