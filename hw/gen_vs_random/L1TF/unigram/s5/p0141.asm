.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
lea ebx, qword ptr [rdx]
xor cx, bx
setnbe al
sbb rbx, rdx
jmp .bb_0.1
.bb_0.1:
add al, -34 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
cmovp ebx, edi
btc bx, 173
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 85
cmovns rbx, rdi
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
