.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnb dx, ax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and cl, dl
bt rdx, rdx
or eax, ebx
xor al, sil
or dil, bl
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
and rsi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 37
or rdi, rcx
and rcx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rcx]
cmovnz ax, ax
or bl, al
cmovnle ecx, edi
bt rsi, rsi
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edx
and rdi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rdi]
and cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
