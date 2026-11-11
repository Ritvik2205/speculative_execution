.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rdi
or cx, 1 # instrumentation
and dx, cx # instrumentation
shr dx, 1 # instrumentation
div cx
lea dx, qword ptr [rdx]
cmp di, 22
mul cx
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
test bl, -8
bt esi, 65
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 49
add dx, -90
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 51
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
