.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 0
btc bx, 58
xor ecx, 8
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
or cl, 39
and al, 14
or dil, al
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
or al, dl
jmp .bb_0.1
.bb_0.1:
or al, -24
and al, 106
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
