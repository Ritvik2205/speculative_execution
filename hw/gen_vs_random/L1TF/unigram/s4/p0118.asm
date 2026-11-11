.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 98
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
cmovbe edi, edx
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], -291743506
btr edi, 92
lea rcx, qword ptr [rsi + rax]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and bl, 125
adc eax, -1211718481
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 98
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
mov edi, edx
or cl, 34
and bl, al
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
