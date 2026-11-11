.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb rsi, rbx
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
or bx, 9
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rbx]
cmp dl, cl
adc dx, di
or dil, dil
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
setns dl
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
cmovnle rbx, rdi
add al, -72
lea cx, qword ptr [rbx + rax + 12]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
