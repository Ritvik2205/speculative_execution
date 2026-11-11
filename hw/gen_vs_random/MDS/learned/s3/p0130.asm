.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
btr di, 199
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
neg ax
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
or eax, -1642752131
sub al, dl
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdi, 34
cmovz esi, ebx
and rdi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rax]
or al, -8
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
