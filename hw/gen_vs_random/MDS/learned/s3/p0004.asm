.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 6
bts rax, 117
and bl, -13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 5
and dl, cl
or eax, -1827868798
cmovo dx, si
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdx], ax
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
and si, ax
and si, cx
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
