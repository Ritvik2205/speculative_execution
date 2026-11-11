.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, -1877933118
cmovl esi, edx
adc al, cl
nop
inc sil
sets dil
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -114
add al, 64 # instrumentation
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
lea edx, qword ptr [rdx + rdi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 95 # instrumentation
cmovnb rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -89
and esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
