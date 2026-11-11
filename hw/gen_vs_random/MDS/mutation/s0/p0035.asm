.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
cmovnb di, cx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
bt edx, 75
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
bt rcx, rax
cmovns edx, edi
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
cmovz di, cx
and rax, -1378371328
test dl, 25
and al, 33 # instrumentation
cmovnle ebx, ecx
xor dl, -125
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and al, bl
cmovnb rdx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
