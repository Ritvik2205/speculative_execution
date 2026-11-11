.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], -55
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
add bl, -50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
cmovo di, bx
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -107
and rsi, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rsi]
xor rbx, rcx
cmovno rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
