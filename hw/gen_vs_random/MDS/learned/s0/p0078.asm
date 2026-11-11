.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
test sil, 17
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
bt ax, bx
not dil
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
xor al, -19
test dl, cl
xor rsi, -117
xor bl, -61
xor rsi, -117
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdx]
or al, dil
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
xor al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
