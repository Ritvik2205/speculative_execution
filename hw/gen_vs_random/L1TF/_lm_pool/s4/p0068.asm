.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], di
or sil, -44
lea ax, qword ptr [rax + rdi]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
or bl, cl
jmp .bb_0.2
.bb_0.2:
lea ax, qword ptr [rcx]
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
