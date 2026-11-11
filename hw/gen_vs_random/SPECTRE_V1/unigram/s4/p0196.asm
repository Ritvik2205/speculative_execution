.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 204
sbb sil, -78
and rsi, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 78
movsx rdx, si
setb dl
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rcx], 87
add al, -14 # instrumentation
lea si, qword ptr [rdx + rax]
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
loope .bb_0.1
jmp .exit_0
.bb_0.1:
adc ax, 24404
add cl, 83 # instrumentation
setbe cl
and rcx, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rcx]
add cx, -103
setno dl
not esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
