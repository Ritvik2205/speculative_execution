.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rax, rax
add dl, -123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
add bl, 112 # instrumentation
setnbe dil
cmovle rcx, rbx
add cl, 125 # instrumentation
adc cl, bl
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
add dl, 48
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
lea cx, qword ptr [rbx + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
cmp dl, 72
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 85
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rbx], bx
and rcx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
