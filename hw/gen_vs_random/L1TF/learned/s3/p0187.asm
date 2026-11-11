.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add bl, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rcx]
test rcx, 50
lea edi, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 94
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], 62
lea rdx, qword ptr [rbx + rsi]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
neg rsi
cmovb bx, cx
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
bts rbx, 30
test dx, 20
or rax, 1447934463
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
