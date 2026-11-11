.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, cl
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
xor dl, -68
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
cmovle rax, rcx
test cl, al
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and dl, bl
xor cl, sil
or bl, 73
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 94
cmovl rax, rdx
or dil, dl
xor eax, 73
and al, dl
cmovnb eax, eax
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
cmovnb dx, cx
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
