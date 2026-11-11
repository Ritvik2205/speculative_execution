.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, eax
and dl, bl
xor sil, -15
and si, -121
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ebx
or al, 16
or al, cl
xor al, dl
jmp .bb_0.1
.bb_0.1:
cmovnp rdx, rdi
not cl
or rcx, 54
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
