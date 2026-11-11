.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 9
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
inc sil
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 48
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], si
xor rbx, 64
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
not ebx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 49
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
and rdi, rdx
and rdx, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rdx]
sbb dx, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
