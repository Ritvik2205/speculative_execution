.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], bx
and dl, -26 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rsi], edx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], edx
xor cl, dil
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
test sil, sil
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
btc edx, 7
cmovle cx, si
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
and bx, 16
or cx, 49
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
