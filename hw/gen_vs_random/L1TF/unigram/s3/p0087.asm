.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
add al, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], 57
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -28
cmovle bx, bx
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
cmovb rax, rdx
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
or rcx, -10
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
