.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 16
sub bl, dil
add esi, edx
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
mov bl, dl
add al, -1 # instrumentation
nop
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rbx]
adc sil, 78
jmp .bb_0.1
.bb_0.1:
cmovno ax, cx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
imul eax, edx, 79
and rdx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
