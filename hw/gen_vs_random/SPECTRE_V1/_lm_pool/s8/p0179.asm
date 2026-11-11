.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 37
lea rdi, qword ptr [rbx + rcx + 90]
sub dl, -12
sub rsi, 97
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], sil
sbb sil, dil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], si
lea cx, qword ptr [rdi + rdx + 7]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
cmp al, 46
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
