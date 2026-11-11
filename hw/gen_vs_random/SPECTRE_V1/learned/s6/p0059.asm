.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
mov dil, bl
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
adc ax, -614
and rax, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor al, -119
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
lea si, qword ptr [rdx + rbx]
and dil, 98
cmovnbe rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
