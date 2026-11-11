.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
cmovnz ax, cx
cmp al, 23
sub al, al
and dl, dl
not edx
and rbx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rbx]
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
test dil, -116
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 2
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
dec bx
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], 57
lea edx, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
dec rax
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
