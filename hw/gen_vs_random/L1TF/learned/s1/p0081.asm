.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, dx
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or al, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
add dl, 22
test dil, -126
bt edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
bts ecx, 225
cmovnbe cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
