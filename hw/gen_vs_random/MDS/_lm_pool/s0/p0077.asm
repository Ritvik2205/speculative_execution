.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 94
or dl, -21
or cl, 30
xor al, bl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
or bl, -54
test eax, 343548072
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
or al, 37
and cl, dl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
