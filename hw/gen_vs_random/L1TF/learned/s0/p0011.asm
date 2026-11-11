.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -36 # instrumentation
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
or edi, ecx
mov bl, cl
cmp bl, 123
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 21
and dl, 32
and dl, dil
jmp .bb_0.1
.bb_0.1:
xor al, dil
cmp al, -119
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor al, 38
cmp al, bl
xor dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
