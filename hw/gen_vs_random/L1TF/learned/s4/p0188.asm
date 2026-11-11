.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rdi]
mul rax
test al, 56
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
lea ebx, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
