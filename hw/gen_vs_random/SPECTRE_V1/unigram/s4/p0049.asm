.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rdx]
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
cmovnle ebx, ecx
sbb dl, bl
or si, 0b1000000000000000 # instrumentation
bsr si, si
and rbx, rax
and rbx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rbx], 5
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
cmovb rdx, rcx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 14
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
lea rbx, qword ptr [rdi + rax + 10]
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rdx]
sbb edx, 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
