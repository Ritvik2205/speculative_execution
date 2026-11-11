.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and al, dl
and rsi, 70
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
btc dx, 38
and eax, -2116875023
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
cmovnb di, bx
bts ecx, ebx
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and dl, -107 # instrumentation
cmovz rax, rbx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rcx
cmovz rdi, rbx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
cmp eax, 42
xor cl, cl
cmp al, 39
and sil, 65
and al, -56
test dil, -72
cmovnle rsi, rdx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
