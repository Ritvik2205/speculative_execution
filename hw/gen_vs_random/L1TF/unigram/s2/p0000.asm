.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rbx, rsi
cmovnbe rsi, rdi
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
test di, cx
cmovno esi, esi
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
movsx edx, cl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
or ebx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
