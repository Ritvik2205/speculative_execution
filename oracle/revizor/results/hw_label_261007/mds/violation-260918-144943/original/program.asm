.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax] 
and al, bl 
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi 
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx] 
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax 
and al, 33 # instrumentation
cmovnle ebx, ecx 
cmovnb di, cx 
and rcx, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rcx] 
xor dl, -68 
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi] 
bt edx, 254 
cmovnb rdx, rbx 
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], edx 
bt rcx, rax 
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl 
cmovns edx, edi 
cmovz di, cx 
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rcx 
and rax, -1909598591 
test dl, 25 
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
