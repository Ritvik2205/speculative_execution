.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg eax, ecx
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rax], di
jmp .bb_0.1
.bb_0.1:
xchg rbx, rsi
xchg rbx, rdx
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
lea edi, qword ptr [rdx]
lea eax, qword ptr [rsi + rbx]
test dil, bl
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
