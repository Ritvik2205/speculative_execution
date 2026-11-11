.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xchg edx, ecx
and rdi, 0b1111111111111 # instrumentation
cmovb si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
sbb dl, 127
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ebx
sbb dil, bl
and rax, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rax]
sub dl, bl
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
