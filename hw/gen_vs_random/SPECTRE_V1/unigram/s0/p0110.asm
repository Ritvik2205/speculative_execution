.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ebx, -33
and rdx, rax
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
mov dil, al
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
movzx ecx, bx
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
mov ecx, esi
lea edi, qword ptr [rdi + rax + 19]
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rsi]
adc dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
