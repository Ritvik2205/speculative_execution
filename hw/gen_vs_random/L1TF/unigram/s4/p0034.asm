.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 18
lea eax, qword ptr [rbx + rdx]
add dil, sil
mul rdi
or bl, cl
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
add cl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -80
and rdi, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdi]
test dl, 84
test ecx, 60
cmp sil, cl
xchg rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
