.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
cmovb eax, eax
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
setnz dil
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
neg rax
cmp rcx, 55
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
movzx ecx, dl
setnl dl
cbw
mov al, bl
cmovle rdi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
