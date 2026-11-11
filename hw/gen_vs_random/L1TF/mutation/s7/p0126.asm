.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb edx, 23
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
add bl, 77 # instrumentation
sbb ebx, -34
add eax, 109
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
imul al
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
add eax, 871834813
and rdx, 88
cmovo di, bx
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
sub bl, -96
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dl
and rbx, -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
