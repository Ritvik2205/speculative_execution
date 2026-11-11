.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdi]
cmp rax, rdx
add cl, 32 # instrumentation
cmovnbe rdi, rsi
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
movzx dx, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
lea rdx, qword ptr [rdx]
not esi
xchg bl, al
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rsi]
add dil, cl
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], -115
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
