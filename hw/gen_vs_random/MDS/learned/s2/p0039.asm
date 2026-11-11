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
or dl, -115
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
xor al, -15
cmovbe si, dx
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], eax
and al, -56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
