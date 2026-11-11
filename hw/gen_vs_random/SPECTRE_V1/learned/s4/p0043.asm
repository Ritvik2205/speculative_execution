.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 73 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
lea ax, qword ptr [rsi + rcx + 100]
or dl, dl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
xor al, -64
and dl, sil
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rdi
and rdi, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
bts edi, edx
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 55
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
