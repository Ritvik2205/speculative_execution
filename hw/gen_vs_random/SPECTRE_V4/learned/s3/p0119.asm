.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
sub al, 59
and rax, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rax]
cmp al, dl
cmp dil, -92
sbb al, 95
xor dl, al
cmp dl, bl
or cl, cl
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rax, 86
and dl, -104
sub al, -84
cmp rdx, -49
sbb ax, 16480
and al, 41
mov al, 9
test edx, 1479885278
and rcx, 0b1111111111111 # instrumentation
cmovz bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
mov al, dl
sub dl, 107
add bl, sil
sub dil, -40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
