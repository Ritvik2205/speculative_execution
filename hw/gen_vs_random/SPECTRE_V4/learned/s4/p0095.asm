.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
test al, -38
dec al
adc al, -117
sbb dl, -71
sbb dl, cl
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 11
adc al, dil
xor al, 30
or bl, dil
xor rax, -224991767
cmp sil, -100
cmp rax, -1547540200
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 77
add cl, al
bts di, 72
or ax, 48
xor ax, -6064
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
xor dl, dil
xor ax, -6064
sub al, -84
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
adc cl, sil
mov al, 125
sub ebx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
