.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
and dl, dl
setbe al
imul edx, ebx
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
bt rbx, 244
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
lea rbx, qword ptr [rbx + rdi]
setle dl
test sil, -31
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
movsx rax, bx
or si, 0b1000000000000000 # instrumentation
bsf ax, si
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
