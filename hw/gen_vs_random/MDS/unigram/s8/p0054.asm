.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rbx]
and cl, -44 # instrumentation
cmovno rcx, rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 65
cmovnle bx, cx
and dx, ax
and eax, edx
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rcx], bx
or di, 0b1000000000000000 # instrumentation
bsf cx, di
xor eax, 571592471
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
or cl, dil
bt rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
