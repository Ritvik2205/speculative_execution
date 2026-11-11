.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul si
lea di, qword ptr [rsi + rdx + 65]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 46
bt ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 87
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 45
lea rsi, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], cl
neg bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rbx]
lea bx, qword ptr [rax]
cmovz dx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
