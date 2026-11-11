.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
sub sil, -35
or al, dl
and dil, -23
cmovno ax, di
jmp .bb_0.1
.bb_0.1:
add cl, -62
sub al, sil
sub sil, -35
adc dil, bl
and dil, al
xor ax, 45
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
add dl, -82
or sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
sub rax, -1881584175
cmovno ax, si
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and al, 41
add al, 40
sub rax, 714283065
cmp eax, 64
xor dl, -66
sbb cl, dl
sbb bx, 87
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and ax, -6897
test al, -85
sbb bl, -79
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
sbb al, 102
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
