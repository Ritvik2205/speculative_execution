.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, -36
not dil
test dl, cl
and sil, -56
and rdx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
xor dil, al
xor al, sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
test sil, dil
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or sil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
