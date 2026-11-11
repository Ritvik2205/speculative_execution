.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dl
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor edx, ecx
lea rax, qword ptr [rax]
cmp rbx, rcx
cmovno rbx, rcx
lea ebx, qword ptr [rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
sbb bl, cl
movzx esi, dx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
add bl, 97 # instrumentation
cmovnb cx, ax
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
