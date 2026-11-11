.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
lea dx, qword ptr [rbx + rbx + 37]
test si, 26
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], 105
and rax, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rax]
add bl, 98 # instrumentation
inc bl
imul edi, ebx, 45
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 13
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 84
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 16
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
