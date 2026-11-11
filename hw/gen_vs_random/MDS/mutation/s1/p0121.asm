.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and al, 33 # instrumentation
cmovnle ebx, ecx
bt rcx, rax
cmovnb di, cx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
test dl, 25
and rax, -1909598591
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
cmovz di, cx
cmovns edx, edi
and al, bl
bt edx, 69
xor dl, -125
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
cmovnb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
