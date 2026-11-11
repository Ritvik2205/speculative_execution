.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
add dl, 35 # instrumentation
cmovnz rbx, rdi
sbb dl, -23
cmovb eax, eax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
movzx ecx, dl
mov al, bl
setnz dil
neg rax
cmp rcx, 55
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
cbw
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
setnl dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
cmovle rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
