.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rcx], si
inc cl
cmovle si, cx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 2
test dl, dl
and al, sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 64 # instrumentation
cmovnz di, ax
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
sbb cl, cl
add cl, 43 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdx]
lea ecx, qword ptr [rdi]
bts dx, 26
add dl, 58 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rdi]
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 5
or bx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
