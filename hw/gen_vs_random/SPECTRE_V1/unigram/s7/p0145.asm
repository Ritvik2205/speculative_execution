.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
cmovb esi, edx
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], eax
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
add cl, 72 # instrumentation
cmovnl dx, bx
lea eax, qword ptr [rax + rax + 93]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
sub cl, dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
lea ax, qword ptr [rcx + rdx + 92]
cmp rcx, 14
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
add al, 123 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
