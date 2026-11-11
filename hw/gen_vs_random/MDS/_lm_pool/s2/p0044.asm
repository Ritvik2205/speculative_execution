.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and bl, al
and dil, bl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
bts rax, rdx
bts rdx, 200
bt bx, 253
test si, 98
test cl, al
and sil, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ebx
test bl, al
or rdi, -11
or cl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
