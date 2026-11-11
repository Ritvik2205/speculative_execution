.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
lea rdx, qword ptr [rax]
xor dil, -37
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 29
sub dx, ax
or bx, cx
add bl, -15 # instrumentation
movzx si, al
lea ax, qword ptr [rsi + rdi + 41]
xor si, 37
jns .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rdx
or si, 0b1000000000000000 # instrumentation
bsf cx, si
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
