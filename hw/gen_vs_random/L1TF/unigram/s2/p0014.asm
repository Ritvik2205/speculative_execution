.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
add dl, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rbx]
btc rax, rsi
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
add dl, dil
add al, -21 # instrumentation
mov ecx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rbx
lea rsi, qword ptr [rdi]
cmovs ecx, ecx
lea rdi, qword ptr [rcx + rax]
movzx esi, cl
add dl, -3 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
lea cx, qword ptr [rdx + rbx]
cmovnbe si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
