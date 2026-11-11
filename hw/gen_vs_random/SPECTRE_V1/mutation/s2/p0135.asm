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
sbb al, 49
cmp al, bl
jmp .bb_0.2
.bb_0.2:
add bl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rcx]
sub dl, 71
inc bl
lea ax, qword ptr [rdx + rax + 36518]
test cl, -24
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], esi
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 2
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
