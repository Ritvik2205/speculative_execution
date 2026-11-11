.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.1
.bb_0.1:
and rcx, 107
or rdx, -48
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
or cl, bl
jmp .bb_0.3
.bb_0.3:
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
or al, -75
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
xor al, 115
and cl, -111
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
