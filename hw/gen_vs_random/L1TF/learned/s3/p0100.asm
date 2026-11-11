.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdx]
inc rcx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
test al, -56
add cl, 88
add edx, 56
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
test sil, 29
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
xor cx, 113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
