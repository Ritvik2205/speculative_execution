.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
sub al, 96
or rdx, 1
sub eax, -494922880
cmp cl, dl
add dil, cl
or dil, cl
add al, -1
cmovno cx, ax
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], sil
add dl, dl
and dil, dl
and al, 49
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
sub bl, al
and al, -87
and dx, -107
mov cl, bl
sbb al, 95
mov dil, 5
add bl, -38
mov cl, 1
dec dl
dec bl
sub bl, dil
test ax, -18054
jmp .bb_0.1
.bb_0.1:
xor di, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
