.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, 104 # instrumentation
mov edi, 15
and rsi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rsi]
xor bl, 38
and al, bl
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
cmovnp rbx, rcx
add al, al
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
add cl, -36
or rbx, 18
sbb al, -14
or al, cl
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
