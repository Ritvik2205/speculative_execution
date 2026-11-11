.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
xor dl, 40
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and sil, -69
or rdi, 21
btr ax, bx
and cl, al
and al, cl
test al, sil
and bl, 68
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 42
and dil, 125
btc dx, 146
jmp .bb_0.2
.bb_0.2:
test eax, 1729060510
test esi, 425331143
or rax, -141551502
and bl, 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
