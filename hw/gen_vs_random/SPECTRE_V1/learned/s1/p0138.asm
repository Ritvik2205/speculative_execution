.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 18
add dl, dl
lea dx, qword ptr [rbx]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rdx]
cmovno bx, di
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
xor cl, 78
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
