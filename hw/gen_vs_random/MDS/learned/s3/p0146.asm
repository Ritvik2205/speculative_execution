.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 5001
bt dx, 228
xor dl, cl
test esi, 1857129931
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rcx], eax
or ax, -14271
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and cl, cl
or dil, cl
and rbx, 65
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], -1734
or bl, cl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
