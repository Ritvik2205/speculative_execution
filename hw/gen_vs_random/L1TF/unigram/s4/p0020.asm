.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc cl
cmovb ax, dx
and rdi, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rdi]
btr edi, ecx
dec sil
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
and rbx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], al
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], di
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 84
inc bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
