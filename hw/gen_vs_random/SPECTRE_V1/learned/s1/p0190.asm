.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
cmp dl, al
and al, -54
cmp al, sil
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
btc rax, rdx
and al, -23
xor al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
