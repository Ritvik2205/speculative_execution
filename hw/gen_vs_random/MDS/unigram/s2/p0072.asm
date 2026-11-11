.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -56 # instrumentation
cmovl rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdi]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
or bl, dl
and cl, -81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
and dx, di
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and edx, 46
cmovle rdi, rsi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
xor dil, 12
and bx, -21
and rcx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 52
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
or sil, -8
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
test ax, 5320
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
