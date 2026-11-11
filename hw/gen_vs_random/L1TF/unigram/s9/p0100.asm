.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, cl
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
or dl, -92
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
adc eax, 457059541
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
lea ax, qword ptr [rbx]
xor al, sil
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 74
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
dec eax
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], 124
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
