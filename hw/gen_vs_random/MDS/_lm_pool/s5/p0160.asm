.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 2
xor al, bl
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
btr eax, ecx
or bl, cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and sil, -69
xor al, 34
btc bx, 58
or dil, -78
xor rdi, -9
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
bt dx, di
or cx, 49
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
