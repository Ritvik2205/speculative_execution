.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
lea edx, qword ptr [rdx + rbx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
btc edx, 169
cmovs rdx, rdx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
btr rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
add bl, -92 # instrumentation
cmovs si, cx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
sbb al, -14
cmp dil, cl
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
lea rbx, qword ptr [rsi + rdx + 43294]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
