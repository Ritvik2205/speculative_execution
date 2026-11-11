.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp rdi, rdi
cmovz ebx, edi
xor dil, bl
bts ecx, 225
and rsi, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
cwde
lea esi, qword ptr [rcx + rax + 30]
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], -41
adc cx, dx
xchg dil, dil
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
