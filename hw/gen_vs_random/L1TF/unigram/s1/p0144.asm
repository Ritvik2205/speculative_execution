.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -68
or rax, -82
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
mov cl, bl
and rdi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdi]
sub si, dx
cmovo dx, cx
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], -29
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
cmovb bx, si
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], sil
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
add cl, sil
sub rbx, 88
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
