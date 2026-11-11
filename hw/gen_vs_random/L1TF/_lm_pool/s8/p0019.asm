.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -2
and cx, 127
not sil
and sil, 37
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], eax
xor cx, 113
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
lea rax, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
