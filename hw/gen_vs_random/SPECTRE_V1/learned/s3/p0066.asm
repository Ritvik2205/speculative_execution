.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], ecx
lea rcx, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
or eax, 74
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
adc bl, 70
lea rdi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 70
and rbx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rbx]
sbb rax, 1380680934
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
