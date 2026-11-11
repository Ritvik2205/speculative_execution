.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ebx, 66
and sil, sil
or al, dil
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and sil, -69
or sil, bl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
or al, -22
or eax, -927349615
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
xor cl, dl
or al, -58
test al, 91
xor al, 115
xor sil, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
