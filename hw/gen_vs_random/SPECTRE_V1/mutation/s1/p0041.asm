.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
add dl, 35 # instrumentation
cmovnz rbx, rdi
cmovb eax, eax
sbb dl, -23
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
cbw
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
setnz dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
movzx ecx, dl
cmovle rdi, rsi
setnl dl
neg rax
mov al, bl
cmp rcx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
