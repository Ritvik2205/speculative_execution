.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
xor cl, 98
cmovns di, cx
and rdi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rdi]
cmovnbe rdx, rdi
cmovnz rax, rdi
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
not dl
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
test rcx, -613256812
cmovl edx, esi
cmovnp di, ax
and rsi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rsi]
and ebx, ebx
btr esi, ecx
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
xor cl, 15
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
