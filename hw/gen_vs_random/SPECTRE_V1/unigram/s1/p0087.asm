.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
cmovb rdx, rbx
sbb dil, -106
add dl, -83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rsi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg ecx, ebx
add dil, -29 # instrumentation
add dil, -70 # instrumentation
setnp dil
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 42
sub cx, 68
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 52
and al, dl
add dil, 110 # instrumentation
cmovb rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
