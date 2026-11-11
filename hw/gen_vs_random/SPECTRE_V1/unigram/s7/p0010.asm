.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
sbb al, al
cmovno rsi, rdx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
lea rdx, qword ptr [rcx]
lea edi, qword ptr [rsi + rsi + 59]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rax
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
sub dil, sil
and rsi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rbx]
and dl, dil
test rcx, -1420345926
cmp rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
