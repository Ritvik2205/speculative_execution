.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
lea eax, qword ptr [rbx + rcx + 91]
adc dil, 120
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], ax
jmp .bb_0.3
.bb_0.3:
imul ebx, edi
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], 5
cmp di, 45
jmp .bb_0.4
.bb_0.4:
and rsi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rsi]
sbb al, cl
sbb al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
