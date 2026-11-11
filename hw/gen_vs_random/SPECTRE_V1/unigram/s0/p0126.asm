.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
cmovl ecx, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx + rdi + 26]
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 31
and rsi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
