.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 29
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], sil
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 94
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
jmp .bb_0.2
.bb_0.2:
sbb cx, bx
or sil, al
cmovnp cx, bx
lea ax, qword ptr [rbx + rdx + 60]
test dil, -126
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
