.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovz di, cx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
cmovnb rdx, rbx
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and rax, -1378371328
bt rcx, rax
bt edx, 75
xor dl, -68
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
and al, 33 # instrumentation
cmovnle ebx, ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
cmovnb di, cx
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
cmovns edx, edi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
test dl, 25
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
