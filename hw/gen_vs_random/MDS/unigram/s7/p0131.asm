.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
cmovnz eax, ecx
cmovs ax, ax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
xor bx, 79
not dl
xor cl, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], 15
xor rax, -843636050
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 9
xor dil, 124
and rbx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ebx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
