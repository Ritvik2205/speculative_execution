.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, dil
imul rbx, rdx, 43
add bx, -65
test sil, cl
and rdi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdi]
lea edx, qword ptr [rbx + rdx]
test si, 95
and rax, rdi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 67
test ax, -30637
cmovo bx, dx
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
