.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
lea rcx, qword ptr [rcx + rdx + 35]
and rax, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
xchg sil, cl
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -8
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
or cl, bl
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
xchg bl, al
add al, 31
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], esi
cmovnbe ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
