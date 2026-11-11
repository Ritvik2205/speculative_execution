.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
or al, -78
xor al, -26
test dl, al
or al, 30
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
or cl, -77
xor dil, -5
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rbx
test bl, dl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 24
or al, dil
test al, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
