.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
cmp al, 73
adc rbx, 75
add al, dil
add al, 31
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 26
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
xchg sil, bl
setb bl
lea rcx, qword ptr [rsi + rdx]
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
btc eax, edx
not rcx
add di, 82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
