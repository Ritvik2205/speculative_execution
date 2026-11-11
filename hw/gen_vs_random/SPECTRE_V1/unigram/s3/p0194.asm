.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dx, -90
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 68
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and cl, bl
cmovl rdx, rdx
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 63
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
cmovnle dx, ax
and rax, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rax]
or dx, 0b1000000000000000 # instrumentation
bsf cx, dx
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 1 # instrumentation
add al, -93 # instrumentation
setnb al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
