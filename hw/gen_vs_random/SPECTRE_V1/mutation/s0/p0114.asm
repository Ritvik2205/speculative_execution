.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
imul edx, ebx
lea rbx, qword ptr [rbx + rdi]
setbe al
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
bt rbx, 224
and dl, dl
setle dl
test sil, -31
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
movsx rax, bx
or si, 0b1000000000000000 # instrumentation
bsf ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
