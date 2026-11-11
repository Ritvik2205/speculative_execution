.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rsi, 53
sbb ecx, 24
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rdx, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdx], 32
sbb ax, 82
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
adc sil, -77
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], ax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
adc edx, edx
lea si, qword ptr [rax + rdi]
sbb al, bl
neg edi
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
add ecx, 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
