.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
or rax, -689609688
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
and bx, 27
test cl, 101
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and cl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
bt dx, 228
test edx, eax
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
test esi, 425331143
cmovo edx, edx
and rdx, 23
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and bl, 1 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
