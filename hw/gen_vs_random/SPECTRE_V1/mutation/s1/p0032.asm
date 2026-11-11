.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -6
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
imul esi, esi, -106
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
and rsi, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rsi]
lea rsi, qword ptr [rdi + rsi]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 5
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
add cl, 72 # instrumentation
adc al, 117
sbb rax, 786640702
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edi
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
xor edi, 115
and cl, cl
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsf rdx, rcx
add dl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
