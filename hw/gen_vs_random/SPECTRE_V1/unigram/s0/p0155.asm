.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap rax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], cx
add dil, cl
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add al, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp esi, dword ptr [r14 + rax]
setbe bl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -51
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
cmp cl, 78
sbb dl, 127
test al, 42
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
cdq
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], -86
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
