.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], cx
cmovno rbx, rcx
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
xor edx, ecx
lea ebx, qword ptr [rdi]
cmp rbx, rcx
movsx ecx, dl
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 97 # instrumentation
cmovnb cx, ax
and rax, 0b1111111111111 # instrumentation
movsx rsi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rcx]
movzx esi, dx
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
sbb bl, cl
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdi]
cmp sil, 25
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
sbb bl, dl
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
