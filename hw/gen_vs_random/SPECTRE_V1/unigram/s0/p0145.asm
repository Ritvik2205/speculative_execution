.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
setnp al
or dl, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rax
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
not dl
setnp al
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
adc bx, 59
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
lea edi, qword ptr [rdi + rsi]
cmovle eax, edx
and rdi, 0b1111111111111 # instrumentation
cmp bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 91
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
