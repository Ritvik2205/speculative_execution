.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rbx, rcx
xor edx, ecx
cmp rbx, rcx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
lea ebx, qword ptr [rdi]
lea rax, qword ptr [rax]
movsx ecx, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
movzx esi, dx
sbb bl, cl
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
add bl, 97 # instrumentation
cmovnb cx, ax
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
