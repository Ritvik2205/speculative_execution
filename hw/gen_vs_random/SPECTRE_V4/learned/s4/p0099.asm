.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edx, 116
test cl, bl
sub al, 63
cmovno rdi, rcx
sub bl, cl
test bl, -116
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
cmp bl, cl
adc dl, cl
add sil, al
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
xor bx, ax
or al, 1
add dl, cl
add bl, cl
or sil, dil
adc sil, 77
adc cl, 111
sub al, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
cmp dil, 101
adc sil, bl
sub dl, -16
and rdi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdi]
and bl, -30
xor ax, -6064
sbb dl, -106
cmp cl, 49
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
sbb bl, -79
cmp al, 75
sbb al, 57
cmp bl, cl
sub sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
