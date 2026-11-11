.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 82
sbb dl, dl
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rdi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdi]
cmp dx, 81
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
nop
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
lea ecx, qword ptr [rbx + rsi + 19]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
mov rsi, 83
adc bl, 86
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], bx
add bl, -79 # instrumentation
cmovo dx, di
mov al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
