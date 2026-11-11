.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 34
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
or rcx, 54
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and ax, -16061
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
xor dl, al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
xor dl, bl
xor dl, al
or si, 94
not bl
and rax, 498847670
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
