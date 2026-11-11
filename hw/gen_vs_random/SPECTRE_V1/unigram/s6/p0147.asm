.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or edi, ebx
inc edx
and rcx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 37
and rbx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rbx]
sbb dl, bl
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rcx]
cmovnle ebx, esi
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, sil
test sil, al
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
