.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rcx], 29
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rsi]
inc edi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 20
not rax
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], 28
lea bx, qword ptr [rdi + rax]
adc ebx, 93
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
add al, 36 # instrumentation
lea ecx, qword ptr [rcx + rdi + 46]
inc sil
add sil, 104 # instrumentation
mov esi, 16
cmovns ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
