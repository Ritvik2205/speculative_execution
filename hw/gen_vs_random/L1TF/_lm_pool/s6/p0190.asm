.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs dx, di
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
and al, -68
or dil, sil
cmp cx, 17
or cl, 105
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
or rdx, -22
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
cmp di, 45
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
