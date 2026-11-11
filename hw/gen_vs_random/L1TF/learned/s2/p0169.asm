.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ecx
sbb dl, dl
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], -29
adc rax, -457629677
not bl
sbb bl, dl
lea ecx, qword ptr [rsi + rdx]
lea rdx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rcx]
cmovnz ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], -259018739
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
xor al, al
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rsi]
or rcx, -10
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
