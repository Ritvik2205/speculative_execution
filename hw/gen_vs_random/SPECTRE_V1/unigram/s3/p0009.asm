.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rax]
movzx si, dl
not di
and rdi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], bx
cmp bx, 78
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
xor rcx, 74
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
movsx rdx, si
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], bl
sbb dil, cl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 3
adc bl, 88
add dl, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
