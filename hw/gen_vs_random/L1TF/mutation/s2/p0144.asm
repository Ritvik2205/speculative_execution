.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, cl
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
add dl, 109 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], -52
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], 77
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
sbb rcx, 42
xor dil, 2
mov edi, edx
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdx]
btc rdi, 243
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], bx
lea di, qword ptr [rdi + rdi + 8878]
and rax, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
