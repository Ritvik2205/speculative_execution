.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and al, 106
or cl, 6
or cl, bl
or rdx, -48
or al, al
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
test cl, 62
or dl, bl
xor al, 34
and rsi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rsi]
test sil, -55
or di, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
