.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sub al, dl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
sub bl, -19
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
or sil, 122
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
