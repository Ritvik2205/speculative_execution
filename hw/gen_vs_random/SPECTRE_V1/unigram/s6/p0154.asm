.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 99
add dl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 32
or dx, di
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
mul dl
cmovnb rdi, rdx
and rbx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rbx]
movsx edi, dil
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
cmp dl, cl
imul cl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
