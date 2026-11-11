.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rcx]
cmovz ebx, edi
imul cx, bx, -29
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rax], rbx
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
and rax, 2134929425
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add ebx, -47
and rbx, 0b1111111111111 # instrumentation
movzx ebx, word ptr [r14 + rbx]
add rax, 913062684
and sil, 111
adc dl, dl
or bl, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rsi], 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
