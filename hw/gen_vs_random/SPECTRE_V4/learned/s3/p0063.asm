.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ebx, edi
or al, 1
and bl, 76
or al, al
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
xor cl, bl
xor cx, si
cmp al, 105
add bl, cl
or cl, 83
sub al, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
