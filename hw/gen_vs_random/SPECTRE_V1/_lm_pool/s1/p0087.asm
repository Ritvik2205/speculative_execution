.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
cmp esi, 75
add bl, -95
sub cl, -21
cmp al, 46
jmp .bb_0.1
.bb_0.1:
sub al, bl
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
lea di, qword ptr [rdx]
and al, -54
cmp al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
