.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, 105
xchg eax, ecx
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and cl, 49
sub bl, 15
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 95
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -32
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], 82
sbb cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
