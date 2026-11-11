.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -1 # instrumentation
cmovnb dx, bx
and al, dl
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and dl, -7
btr dx, di
jmp .bb_0.1
.bb_0.1:
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
and rdx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdx]
xor cl, cl
xor sil, sil
and bl, 52 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
adc al, 73
xor cl, sil
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rbx
cmovns edx, edi
cmovz cx, ax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rax, -1909598591
bswap rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
