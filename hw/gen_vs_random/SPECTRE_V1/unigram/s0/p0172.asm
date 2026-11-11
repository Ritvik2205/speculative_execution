.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
add cl, -59 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 57
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
inc al
and rcx, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rcx]
sub rcx, 13
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], bx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 16 # instrumentation
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 72
dec rdx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], dil
cmovs rcx, rcx
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
movsx rdi, ax
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
