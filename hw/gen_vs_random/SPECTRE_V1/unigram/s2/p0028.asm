.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -38
add bl, -114 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], dl
and rdi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
movsx rbx, cx
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
lea dx, qword ptr [rcx + rax + 37]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], dil
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], cx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 91
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
add sil, bl
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
