.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rbx]
sub cl, 86
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdi]
btc si, cx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and cl, 88
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
