.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
cmovnz rdx, rcx
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
cmovo rbx, rdx
or sil, bl
btr ebx, 0
and esi, 66
and edi, eax
xor edi, 84
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
bt ax, 76
and dl, -73
test rcx, -613256812
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
cmovns edi, ecx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], 118
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
