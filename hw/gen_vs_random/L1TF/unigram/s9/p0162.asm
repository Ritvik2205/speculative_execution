.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 64 # instrumentation
sbb sil, dil
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rcx]
cmovnbe rcx, rsi
and rcx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rcx]
test al, dil
xor dil, cl
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rcx]
sbb ax, si
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
add bl, -9 # instrumentation
adc rdi, 14
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
imul di, bx, 1
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
