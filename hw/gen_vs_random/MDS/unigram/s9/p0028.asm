.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rsi
or di, 0b1000000000000000 # instrumentation
bsf ax, di
and bl, 45 # instrumentation
cmovnb bx, dx
and bx, 92
bt ax, cx
cmovz cx, di
and cl, sil
and rdx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
or dl, al
bt bx, si
or bl, al
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rdi]
or dil, dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor esi, eax
test dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
