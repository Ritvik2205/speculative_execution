.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, rsi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
lea si, qword ptr [rsi]
cmp dl, cl
add dil, 113 # instrumentation
setnb dil
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 91
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], bl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
xchg edx, esi
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 65
cmp bx, 81
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 50
cmp cl, al
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
