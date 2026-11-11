.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdi, qword ptr [rcx + rsi + 43]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 91
mov si, 20858
xor ax, -27503
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 29
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and esi, ecx
add cl, -117 # instrumentation
lea rdx, qword ptr [rcx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 34
add dil, -15 # instrumentation
cmovl rdi, rbx
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx], 22
and rsi, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
