.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rdi
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 28
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
mov cl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], sil
add al, -44
sub dl, 71
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
