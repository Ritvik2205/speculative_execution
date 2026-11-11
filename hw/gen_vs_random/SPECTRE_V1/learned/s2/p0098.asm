.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 79
test cl, -31
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
sub rax, -679751639
lea dx, qword ptr [rdi]
lea rbx, qword ptr [rdx]
not dl
and rdi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], 19
lea edi, qword ptr [rsi]
or bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
