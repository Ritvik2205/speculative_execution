.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb dl
lea rbx, qword ptr [rbx + rax]
cmp edx, 44
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
add bx, si
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], cx
setnp al
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
cmp dil, -78
add bl, -43 # instrumentation
adc ax, 56
test rdx, rbx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
