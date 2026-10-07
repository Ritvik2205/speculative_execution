.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
lfence
cmovns rdx, rdx 
lfence
and rax, 0b1111111111111 # instrumentation
lfence
test byte ptr [r14 + rax], 11 
lfence
xor al, al 
lfence
bt ebx, edx 
lfence
bt ax, 171 
lfence
test dil, -72 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock or dword ptr [r14 + rax], ebx 
lfence
or ebx, 0b1000000000000000000000000000000 # instrumentation
lfence
bsr ecx, ebx 
lfence
and rax, 0b1111111111000 # instrumentation
lfence
lock xor word ptr [r14 + rax], si 
lfence
and al, bl 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
xor edi, dword ptr [r14 + rsi] 
lfence
or dl, -18 
lfence
and rdi, 0b1111111111111 # instrumentation
lfence
test dword ptr [r14 + rdi], ecx 
lfence
and rcx, 0b1111111111111 # instrumentation
lfence
btr dword ptr [r14 + rcx], 5 
lfence
or sil, bl 
lfence
xor eax, 73 
lfence
and dil, dil 
lfence
and rsi, 0b1111111111111 # instrumentation
lfence
cmovl esi, dword ptr [r14 + rsi] 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
lock or qword ptr [r14 + rbx], rcx 
lfence
and rbx, 0b1111111111000 # instrumentation
lfence
and edx, 0b111 # instrumentation
lfence
lock btc dword ptr [r14 + rbx], edx 
lfence
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit 
.section .data.main
.test_case_exit:nop
