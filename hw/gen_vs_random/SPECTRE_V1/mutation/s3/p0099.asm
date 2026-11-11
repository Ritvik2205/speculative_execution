.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], -106
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp rcx, 55
cbw
setnl dl
movzx ecx, dl
cmovle rdi, rsi
neg rax
mov al, bl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 96
setnz dil
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rsi
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
