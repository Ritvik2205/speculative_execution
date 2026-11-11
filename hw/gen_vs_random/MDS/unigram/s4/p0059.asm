.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rax]
cmovnbe ax, dx
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdi]
or ebx, edx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 76
btr rdi, rdi
and esi, 48
and rsi, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
or dl, -115
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], -84
or edi, 52
and sil, -94
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
