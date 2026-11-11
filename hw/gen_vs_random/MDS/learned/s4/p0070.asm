.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dx, 90
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 23
xor al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
jmp .bb_0.1
.bb_0.1:
or rbx, -77
or al, dl
jmp .bb_0.2
.bb_0.2:
xor al, 115
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
or bl, al
or cl, 119
xor al, dil
test rbx, 84
xor al, 115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
