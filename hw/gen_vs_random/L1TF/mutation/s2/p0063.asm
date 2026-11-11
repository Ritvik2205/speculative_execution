.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
sbb rcx, 42
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
xor dil, 2
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
lea di, qword ptr [rdi + rdi + 8878]
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
btc rdi, 243
movzx cx, bl
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
movsx ecx, cl
mov edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
