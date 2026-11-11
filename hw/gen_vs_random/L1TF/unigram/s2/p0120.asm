.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rbx
sub dil, bl
sub bx, 78
and rbx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rbx]
sub rcx, -121
mov ebx, ecx
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and bl, sil
add cl, -41 # instrumentation
adc ax, si
mov dl, sil
adc bl, dil
cmovl di, ax
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 94
cmovp eax, esi
sub rax, 57846954
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
