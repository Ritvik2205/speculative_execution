.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and dl, dl
or dl, -97
and cl, -19
and cx, -2
or edi, esi
or bl, sil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
test dl, bl
bt bx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
