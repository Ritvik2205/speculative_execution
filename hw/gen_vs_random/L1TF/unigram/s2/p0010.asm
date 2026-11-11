.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
add dil, -110 # instrumentation
btr di, 59
adc sil, sil
and ax, dx
add dil, -7
jmp .bb_0.1
.bb_0.1:
mov al, al
btr edi, esi
cmovns cx, ax
and rdi, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdi]
adc cl, -34
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rax]
cmovl di, dx
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
