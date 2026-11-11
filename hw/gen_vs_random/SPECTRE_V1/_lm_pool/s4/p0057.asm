.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
add sil, cl
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
xchg bl, dl
jle .bb_0.2
jmp .bb_0.3
.bb_0.2:
mov bl, sil
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jns .bb_0.3
jmp .exit_0
.bb_0.3:
add dil, sil
sub rax, -1628299544
or cl, sil
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
