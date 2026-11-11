.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
xchg ebx, edx
test al, 15
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], 109
lea ax, qword ptr [rbx + rdi + 89]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
or dl, -67
and sil, -90
test esi, 83
test ecx, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
