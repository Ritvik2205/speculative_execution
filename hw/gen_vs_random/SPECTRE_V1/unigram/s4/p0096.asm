.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
or dl, sil
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
cmp dil, dil
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle ax, ax
sub bl, -19
bt rdx, 57
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 2
add bl, 52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
xchg eax, ebx
and rdi, rbx
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
cmp cl, dl
and rcx, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rcx]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
