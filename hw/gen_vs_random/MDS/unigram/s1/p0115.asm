.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], dil
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 1
bts rax, 149
xor ebx, 67
cmovno edi, eax
xor bl, 2
and sil, al
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
jmp .bb_0.1
.bb_0.1:
or ax, 0b1000000000000000 # instrumentation
bsr dx, ax
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdi]
or bl, 84
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 88
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
and bx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rcx]
test dil, -67
and bl, 52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
