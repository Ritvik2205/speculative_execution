.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmovno eax, ecx
cmovnp rcx, rdx
and dil, 61 # instrumentation
cmovl cx, di
cmovb bx, dx
and al, 75
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
test dl, sil
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
jmp .bb_0.1
.bb_0.1:
or cl, cl
xor rbx, 89
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 2
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rbx
and rsi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 5
cmovs esi, edx
and dl, 37 # instrumentation
cmovnbe cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
