.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
mov ax, bx
add bl, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rdi
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
mul esi
cmovp ecx, eax
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edx
add dl, 37 # instrumentation
cmovbe si, bx
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
sub eax, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
