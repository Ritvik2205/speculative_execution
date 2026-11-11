.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
xor di, 93
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor al, 34
or dil, -78
or bl, bl
and rax, rbx
jmp .bb_0.1
.bb_0.1:
or cl, dl
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
test dl, cl
and al, bl
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
