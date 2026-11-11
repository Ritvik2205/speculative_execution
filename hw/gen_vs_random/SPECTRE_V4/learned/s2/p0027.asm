.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 42
cmp rax, -2096157586
sub al, sil
and ebx, -4
movsx cx, dil
and bl, sil
sub dil, bl
mov dl, bl
sbb cl, 40
add dl, sil
mov dl, cl
sub al, dil
dec al
or al, al
sub rbx, 101
cmp al, dil
or dil, cl
or dx, 57
and dil, cl
and al, cl
xchg bx, ax
xor ax, -22861
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
add sil, al
sub al, cl
adc dl, 38
adc al, -59
sub al, bl
dec al
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
