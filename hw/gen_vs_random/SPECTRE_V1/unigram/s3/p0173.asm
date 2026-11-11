.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
cmovbe bx, di
add dx, -90
lea di, qword ptr [rdi + rsi]
cmovle si, di
imul ax, ax
xchg rax, rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
or ebx, -124
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 58
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], dil
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
bts bx, ax
sbb cl, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
