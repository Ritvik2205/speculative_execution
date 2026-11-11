.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -127 # instrumentation
movzx ebx, cl
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
cmp al, 69
mov dl, 98
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rdx]
cbw
and rdi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 83
xchg si, bx
xor al, -41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
