.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
test dil, -116
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
btc edx, 169
cmovs rdx, rdx
lea edx, qword ptr [rdx + rbx]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
sbb al, 33
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
cmp dil, cl
add bl, -92 # instrumentation
cmovs si, cx
lea rbx, qword ptr [rsi + rdx + 43294]
btr rbx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
