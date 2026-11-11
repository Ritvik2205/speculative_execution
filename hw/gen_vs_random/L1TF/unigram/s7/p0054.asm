.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
mov eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
cmovz ebx, esi
setz cl
xor al, 45
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx], 86
add cl, 98 # instrumentation
inc cl
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], esi
not edx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], sil
add sil, 64 # instrumentation
sbb sil, dl
or sil, bl
xchg bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
