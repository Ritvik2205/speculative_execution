.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 20
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
add al, -33 # instrumentation
cmovnl si, cx
lea rsi, qword ptr [rsi + rax + 880]
and rdx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
add bl, 27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
add eax, 871834813
add al, -40 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
lea si, qword ptr [rbx + rsi + 54]
lea bx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
movsx ax, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
