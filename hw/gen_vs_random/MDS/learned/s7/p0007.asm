.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 78
and sil, cl
test sil, al
or di, 83
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
and al, -8
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 20
xor al, dl
xor al, 115
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
or rdi, 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
