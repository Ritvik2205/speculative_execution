.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 43
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ebx
add dil, bl
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], ax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
sbb edx, -8
mov bl, sil
sub al, -89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
