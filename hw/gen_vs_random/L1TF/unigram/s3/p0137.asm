.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 1 # instrumentation
and rdx, qword ptr [r14 + rsi] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 86
cmovb rdx, rsi
btr eax, esi
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdx]
add cl, -103 # instrumentation
cmovnl rdi, rax
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 6
lea eax, qword ptr [rbx]
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
add al, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
mov bl, 72
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
lea rsi, qword ptr [rbx + rbx + 1]
lea ax, qword ptr [rax + rsi + 36]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
