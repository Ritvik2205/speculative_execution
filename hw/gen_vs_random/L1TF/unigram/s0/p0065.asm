.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
inc dx
not dl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rsi]
or dil, -28
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], esi
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 41
xor bx, 14
cmovo rax, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
