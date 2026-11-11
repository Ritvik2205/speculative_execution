.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
sbb dl, -23
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
cmovb eax, eax
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
setnl dl
cmp rcx, 55
neg rax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
mov al, bl
cmovle rdi, rsi
movzx ecx, dl
cbw
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
setnz dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
