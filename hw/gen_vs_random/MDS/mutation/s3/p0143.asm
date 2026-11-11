.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
bt rcx, rax
and al, 33 # instrumentation
cmovnle ebx, ecx
test dl, 25
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
bt edx, 254
cmovz di, cx
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
cmovns edx, edi
xor dl, -125
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx]
and rax, -1378371328
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx
cmovnb rdx, rbx
cmovnb di, cx
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
