.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rbx, 80
setle dil
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rbx, rsi
add al, -3 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
cmovp si, bx
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
add cl, al
add cl, -34 # instrumentation
setl dl
sbb dl, bl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
