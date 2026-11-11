.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rsi], 6
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp bl, dl
and dl, -111
cmp dl, bl
or rcx, 50
js .bb_0.2
jmp .exit_0
.bb_0.2:
lea dx, qword ptr [rdi + rdx + 100]
cmp sil, 25
sub ax, 124
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
