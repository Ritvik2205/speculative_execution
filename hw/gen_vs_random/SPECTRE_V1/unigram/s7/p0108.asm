.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, sil
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], -125
cmp cx, 19
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
setnp dl
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], 78
and rsi, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 38
and rdx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rdx]
not sil
and rax, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rax]
lea rcx, qword ptr [rbx + rax + 26]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
