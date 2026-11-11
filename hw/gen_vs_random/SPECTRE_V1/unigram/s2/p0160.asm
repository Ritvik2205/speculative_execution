.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bswap edi
cwd
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], 20
cmovnz cx, si
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 36
and rax, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rax]
add bl, -52 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
cmovno rdi, rdi
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -7
sub al, -82
cmovo ax, si
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
sub rdx, rax
xor cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
