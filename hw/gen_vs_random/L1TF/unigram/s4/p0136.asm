.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rax], 86
and rsi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rsi]
add dl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
add dl, 91 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rcx]
lea rbx, qword ptr [rbx]
and rcx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
imul rax, rax, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
