.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 121 # instrumentation
cmovs edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
cmovno esi, edx
and bl, 76 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
btc edi, edi
cmovle si, si
lea bx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
lea rdx, qword ptr [rdi + rax]
mov si, bx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
test ecx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
