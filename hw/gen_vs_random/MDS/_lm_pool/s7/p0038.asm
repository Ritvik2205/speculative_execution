.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, 22
xor rax, -843636050
test sil, 17
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
test dl, 9
or bl, dil
or rbx, -77
and rdi, 7
and sil, -56
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and edi, 23
test al, dil
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
