.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
add bl, -108 # instrumentation
sbb al, 75
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], 40
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
sub ebx, 82
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 6 # instrumentation
adc rcx, 77
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
xchg bl, al
cmp bl, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
cwde
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], cl
and rcx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rcx]
add al, 51 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
