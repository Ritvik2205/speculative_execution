.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
adc dil, 120
movsx esi, al
and rdi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdi]
cmovl ebx, edx
lea ebx, qword ptr [rbx + rax]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
cmovp rdx, rsi
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
setp dil
add ax, 116
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rax
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
xor al, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
