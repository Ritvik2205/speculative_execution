.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 41
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
add al, -72
cmp dil, sil
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
js .bb_0.1
jmp .exit_0
.bb_0.1:
adc edx, 45
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
