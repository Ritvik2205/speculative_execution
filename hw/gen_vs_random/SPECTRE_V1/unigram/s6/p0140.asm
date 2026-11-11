.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul rcx
cmovbe dx, ax
or eax, 1276549484
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
lea ax, qword ptr [rdi + rbx]
cmovno rdx, rcx
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], -126
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 77
mov al, sil
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 34
add cl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
and rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
