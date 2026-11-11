.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
lea esi, qword ptr [rcx]
cmovnb ax, cx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], ax
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdi
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add dil, 32 # instrumentation
sbb al, dil
cmovo eax, edx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 49
movzx di, sil
cmovnbe rdx, rbx
add al, -54 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 33
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
xor al, -64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
