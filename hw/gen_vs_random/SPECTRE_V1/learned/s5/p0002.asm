.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rsi]
sub al, dil
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
sub dil, al
add sil, -68
and dl, -92
xor eax, -1721938664
sbb dl, dil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb al, 33
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
