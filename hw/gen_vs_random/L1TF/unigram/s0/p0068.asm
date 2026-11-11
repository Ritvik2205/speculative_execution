.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rsi]
setp cl
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
mov rsi, 36
xor bl, -6
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 35
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 19
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
adc dl, 41
add al, -117 # instrumentation
lea rbx, qword ptr [rax]
cmp cx, 7
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
lea ax, qword ptr [rdi]
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
