.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 24
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
sub dil, 87
lea rcx, qword ptr [rax + rbx]
sub al, -3
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], si
and rax, -109
jmp .bb_0.1
.bb_0.1:
add bl, 89 # instrumentation
sbb al, dl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
xor al, 45
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
