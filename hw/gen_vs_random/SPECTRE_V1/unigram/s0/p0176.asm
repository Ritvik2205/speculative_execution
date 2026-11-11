.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 93
xor al, -89
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
cmovnp bx, bx
add bl, -12 # instrumentation
lea rsi, qword ptr [rdx + rax]
setnb dil
inc rsi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
imul al
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], edi
test bl, -8
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 100
inc edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 18
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1921229398
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
