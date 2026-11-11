.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and dil, dil
bt ebx, edx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
test dil, -72
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and al, bl
bt ax, 171
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
or sil, bl
or dl, 22
xor al, al
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
xor eax, 73
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
and cl, 95 # instrumentation
cmovns rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
