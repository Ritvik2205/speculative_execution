.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
add al, -109
add cl, dl
sbb dl, bl
lea ebx, qword ptr [rcx]
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or rcx, 39
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
