.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 101
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 5
xor sil, 94
or cl, al
and si, -121
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
test cl, -86
bt ebx, edi
and rdi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rcx
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
test eax, -1634766116
or al, -78
not sil
or rax, -689609688
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
