.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -90
cmp rax, 40
and rsi, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rsi]
or sil, -47
xor dx, 7
xchg rsi, rbx
sbb sil, -124
cmp rcx, -121
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
mov al, cl
or rax, rbx
add al, -127
cmp rbx, -91
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and bl, al
sbb ax, -30070
sub rdi, -34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
