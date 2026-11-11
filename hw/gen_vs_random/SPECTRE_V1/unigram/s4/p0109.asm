.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
add al, -122 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rax
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], 18
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 22
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
lea rsi, qword ptr [rdx + rax + 20]
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 116 # instrumentation
cmovbe rbx, rbx
setnz al
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
test sil, 112
mov rsi, 8418490294875847673
and rcx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
