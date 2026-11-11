.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
adc al, -6
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
sbb al, 92
and rdx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdx]
sub sil, -99
and rsi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rsi], 82
sub bl, -96
and rdi, rbx
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
