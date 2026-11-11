.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub dl, cl
lea rbx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rsi
lea rcx, qword ptr [rsi + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
loopne .bb_0.1
jmp .bb_0.2
.bb_0.1:
test dil, 88
jmp .bb_0.2
.bb_0.2:
add dx, ax
add sil, 45 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
add dl, -121 # instrumentation
cmovnp eax, esi
mov al, cl
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
sub esi, 62
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 28
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
