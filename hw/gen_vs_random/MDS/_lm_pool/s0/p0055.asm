.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor di, -83
or ebx, -104
or cl, -77
and rax, 79
and di, 91
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and sil, bl
or al, 37
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
bt bx, dx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
xor al, 99
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
xor dil, 124
xor rax, -404206377
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
