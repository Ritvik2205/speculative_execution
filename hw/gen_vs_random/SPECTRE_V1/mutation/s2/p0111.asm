.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 36 # instrumentation
setnl cl
and ax, si
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
lea bx, qword ptr [rax + rsi + 25491]
cmovnbe edi, edx
cmp al, al
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
cmovnp rcx, rdx
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 112 # instrumentation
setnbe cl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
lea esi, qword ptr [rbx + rcx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], dl
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
jmp .bb_0.2
.bb_0.2:
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
