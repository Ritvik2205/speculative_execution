.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rbx]
or cl, dl
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 7
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], bl
lea dx, qword ptr [rcx + rax + 66]
lea rax, qword ptr [rcx + rsi]
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
