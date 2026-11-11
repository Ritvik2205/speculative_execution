.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
cmovb eax, eax
add dl, 35 # instrumentation
cmovnz rbx, rdi
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rdi, rsi
neg rax
cbw
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
setnl dl
setnz dil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
movzx ecx, dl
cmp rcx, 55
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
mov al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
