.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
cmp rax, -1547540200
cmp al, 75
mov dil, sil
cmp al, dil
dec dl
sbb al, sil
and al, -118
add al, 19
test cl, -119
cmovle rdi, rcx
add ax, 10655
add sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
