.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rbx]
and bx, 18
sub sil, -99
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor esi, 13
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 66
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
sbb al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
