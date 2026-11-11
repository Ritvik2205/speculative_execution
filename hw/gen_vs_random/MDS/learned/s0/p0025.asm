.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
xor al, al
bt ebx, edx
bt ax, 171
test dil, -72
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and al, bl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or dl, 22
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 83
xor eax, 73
and dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
lea ax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
