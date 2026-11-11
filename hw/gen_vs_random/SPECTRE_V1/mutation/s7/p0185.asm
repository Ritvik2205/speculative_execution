.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc edx, 169
cmovs rdx, rdx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
lea edx, qword ptr [rdx + rbx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
test dil, -116
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
add bl, -92 # instrumentation
cmovs si, cx
btr rbx, rax
cmp al, bl
cmp dil, cl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
lea rbx, qword ptr [rsi + rdx + 43294]
sbb al, -107
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
