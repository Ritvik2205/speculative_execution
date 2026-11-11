.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 74
xor dil, -124
and dil, bl
test dil, dl
xor sil, 110
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
test rax, -648054011
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
