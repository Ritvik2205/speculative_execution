.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
cmp ax, 7046
mov cl, al
and rcx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rcx]
xor bl, dl
mov sil, al
cmovs dx, bx
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rdx + rdi + 48]
sub al, sil
jle .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], al
xor ax, 913
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
