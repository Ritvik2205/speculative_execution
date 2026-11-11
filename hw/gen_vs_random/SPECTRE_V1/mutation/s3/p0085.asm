.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdi]
setbe al
and rcx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], esi
bt rbx, 183
lea rbx, qword ptr [rbx + rdi]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
imul edx, ebx
test sil, -31
setle dl
and dl, dl
and rdi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdi]
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 73 # instrumentation
mov rdx, -4695514922061161705
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -89
or si, 0b1000000000000000 # instrumentation
bsf ax, si
movsx rax, bx
jmp .bb_0.2
.bb_0.2:
add dl, -120 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
mul sil
add cl, -18 # instrumentation
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 77
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
