.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
adc al, bl
lea eax, qword ptr [rsi]
and rbx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rbx]
add dl, -15 # instrumentation
cmovl rdx, rax
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
bt rsi, rax
add sil, al
sub al, 28
movsx rax, dl
cmovl ax, bx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
add bl, -19 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
cmp bl, 92
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 85
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
