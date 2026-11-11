.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
and al, dl
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], 66
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], -45
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
or bx, 0b1000000000000000 # instrumentation
bsf dx, bx
imul edx
dec sil
lea rsi, qword ptr [rax + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
