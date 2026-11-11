.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
or dil, -113
or sil, al
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
jnz .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea si, qword ptr [rdi + rdx + 56]
jnp .bb_0.2
jmp .exit_0
.bb_0.2:
or edi, ecx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dil
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
