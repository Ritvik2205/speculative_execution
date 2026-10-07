.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
lfence
and rax, 0b1111111111111 # instrumentation
lfence
cmovs edx, dword ptr [r14 + rax] 
lfence
and al, bl 
lfence
and rdx, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rdx], edi 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovnbe esi, dword ptr [r14 + rcx] 
lfence
or eax, 0b1000000000000000000000000000000 # instrumentation
lfence
bsf eax, eax 
lfence
and al, 33 # instrumentation
lfence
cmovnle ebx, ecx 
lfence
cmovnb di, cx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
cmovns rdx, qword ptr [r14 + rcx] 
lfence
xor dl, -68 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovz edi, dword ptr [r14 + rsi] 
lfence
bt edx, 254 
lfence
cmovnb rdx, rbx 
lfence
and rsi, 0b1111111111000 # instrumentation
lfence
lock xor dword ptr [r14 + rsi], edx 
lfence
bt rcx, rax 
lfence
and rbx, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rbx], cl 
lfence
cmovns edx, edi 
lfence
cmovz di, cx 
lfence
and rdi, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rdi], rcx 
lfence
and rax, -1909598591 
lfence
test dl, 25 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
