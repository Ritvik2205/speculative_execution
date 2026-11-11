.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 60
or al, dil
or dl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
inc eax
jmp .bb_0.1
.bb_0.1:
lea ax, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
add cl, -123 # instrumentation
cmovnp rax, rdi
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
test ebx, edx
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
