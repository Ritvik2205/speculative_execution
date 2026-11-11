.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
neg word ptr [r14 + rax]
add bl, -107 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -128
not rsi
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rax]
cwde
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg eax, edx
test al, 70
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rsi]
cmovl rcx, rcx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
or al, al
cbw
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
