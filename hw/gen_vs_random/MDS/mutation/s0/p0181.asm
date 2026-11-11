.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor eax, 1170472196
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
and al, bl
or dl, -115
and dil, dil
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
bt ax, 171
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or sil, bl
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
test dil, -67
xor al, al
bt ebx, edx
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
