.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rcx + rcx + 41]
not cx
xor al, dil
and rsi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rsi]
sbb cl, bl
and ax, si
add bl, 65 # instrumentation
cmovo rbx, rdi
jmp .bb_0.1
.bb_0.1:
sub cl, -49
imul dl
adc edi, 117
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
sbb cl, cl
lea eax, qword ptr [rcx + rbx + 84]
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
btr eax, 231
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
