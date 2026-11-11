.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
imul cl
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 6
and rax, 2134929425
and rdi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 3
mul cl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmovz eax, edi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 95 # instrumentation
cmovnb rdi, rcx
sub al, sil
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -93
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
