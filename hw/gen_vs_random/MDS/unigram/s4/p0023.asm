.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], 120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
cmovb rax, rbx
and rdx, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdx]
xor dx, 50
and rsi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rdi]
or bl, bl
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rbx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ebx
and sil, -69
btr si, 208
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 35
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
