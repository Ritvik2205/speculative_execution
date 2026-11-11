.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rax]
cmp eax, -563371897
xor bl, -38
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
add esi, 86
xchg al, dil
and cl, 86
inc eax
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rdx]
sub cl, bl
sub bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
