.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], cx
and ecx, -104
xor al, -4
xor dl, -59
and dil, cl
or cl, dil
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
cmovnp rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 92
test al, sil
or al, 30
and cl, dil
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
