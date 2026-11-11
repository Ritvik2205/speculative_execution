.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -9 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rdi]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, esi
add bl, 81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
and rdi, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], sil
cmovp si, dx
add al, bl
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
jmp .bb_0.1
.bb_0.1:
inc sil
lea rdx, qword ptr [rdi + rsi]
inc edi
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 68
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -800407
and sil, 110
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
or rax, 1447934463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
