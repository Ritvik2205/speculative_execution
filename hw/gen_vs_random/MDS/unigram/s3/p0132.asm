.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, 18
xor ebx, ebx
and si, dx
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
cmovnb ax, ax
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and dil, -17 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
btc rdi, 6
cmovle ax, ax
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and rax, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rax]
and cl, 40
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edi
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rdi]
or si, 0b1000000000000000 # instrumentation
bsf si, si
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and dil, 82
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
or bx, 81
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
