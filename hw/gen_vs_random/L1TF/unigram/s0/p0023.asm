.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea esi, qword ptr [rax]
lea bx, qword ptr [rax]
neg rdi
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
add al, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rax]
and ebx, eax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 97
jmp .bb_0.1
.bb_0.1:
and sil, 110
mov cx, si
and rdx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rdx]
cmovo edx, ecx
add si, 70
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 92
add dl, 109 # instrumentation
sbb dil, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
