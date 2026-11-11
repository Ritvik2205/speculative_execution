.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
lea rsi, qword ptr [rsi + rax + 880]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
add al, -33 # instrumentation
cmovnl si, cx
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
movsx ax, cl
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
add eax, 109
lea si, qword ptr [rbx + rsi + 54]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
add bl, 89 # instrumentation
sbb dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 94
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], 0
and ax, 7954
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
