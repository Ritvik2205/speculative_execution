.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 77
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 54
adc ebx, 9
add al, al
and bl, dl
and rbx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rbx]
sub dil, bl
xor bl, -38
test al, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
