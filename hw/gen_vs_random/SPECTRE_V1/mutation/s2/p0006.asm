.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdx
cmovs rdx, rdx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], bx
test dil, -116
btc edx, 169
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], si
lea edx, qword ptr [rdx + rbx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -92 # instrumentation
cmovs si, cx
cmp dil, cl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], dx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
lea rbx, qword ptr [rsi + rdx + 43294]
btr rbx, rax
sbb al, 104
cmp al, bl
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], rax
lea ax, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], 354197880
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
