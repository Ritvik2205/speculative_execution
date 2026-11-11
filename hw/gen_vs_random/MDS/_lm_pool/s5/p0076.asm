.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
xor dil, al
not bl
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
xor dil, sil
btc ebx, 149
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and edx, -44
test sil, al
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
