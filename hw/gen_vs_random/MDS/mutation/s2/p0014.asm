.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
bt ax, 171
or dl, 22
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and cl, 95 # instrumentation
cmovns rdx, rdx
xor al, al
test dil, -67
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
xor eax, 1170472196
or sil, bl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
bt ebx, edx
and al, bl
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
