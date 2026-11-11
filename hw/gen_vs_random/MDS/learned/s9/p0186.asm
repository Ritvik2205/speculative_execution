.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and di, 99
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
xor ebx, 7
or cl, 39
jmp .bb_0.1
.bb_0.1:
or cl, al
or dil, cl
or bx, 78
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
test dl, al
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
xor rdi, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
