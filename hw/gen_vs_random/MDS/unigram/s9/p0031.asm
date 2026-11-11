.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 40
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 3
and dx, ax
test sil, -55
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], -35
test rdi, 51
and dl, 37 # instrumentation
cmovnbe cx, di
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
test dx, 16353
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovz bx, bx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
or sil, sil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ebx
cmovno rax, rax
cmovnbe rdi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
