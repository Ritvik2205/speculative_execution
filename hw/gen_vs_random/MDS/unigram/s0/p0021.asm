.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, bl
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
cmovp eax, edi
and dl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdi]
cmovz si, ax
and sil, -58 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 34
bts rdx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rbx]
xor bl, -27
and rdi, 84
and rdi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdi]
or dil, cl
cmovz rdi, rdi
cmovnb bx, cx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], 3898
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
cmovnz ebx, esi
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
