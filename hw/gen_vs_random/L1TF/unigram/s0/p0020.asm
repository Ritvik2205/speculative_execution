.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dl
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
add sil, -61
add rdx, 2
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], 21
lea cx, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], ecx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -103
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], 17
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 81
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rsi]
lea rdx, qword ptr [rdx + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
