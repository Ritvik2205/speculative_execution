.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 25
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 41
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 41
mov dl, 42
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
xchg cl, bl
add dl, 47
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
test bl, -8
lea rdx, qword ptr [rbx + rdx]
lea bx, qword ptr [rdi + rdx]
lea rax, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
