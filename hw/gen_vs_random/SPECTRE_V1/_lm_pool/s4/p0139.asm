.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -116
jnp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
test sil, -31
jnz .bb_0.2
jmp .bb_0.3
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
jns .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdx]
js .bb_0.4
jmp .exit_0
.bb_0.4:
cmp al, 23
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
