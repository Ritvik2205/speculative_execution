.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub ax, cx
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rsi
cmovb rdx, rdi
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
lea esi, qword ptr [rdi + rax + 79]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 33
lea ebx, qword ptr [rbx + rsi + 89]
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
test di, 47
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
add sil, 28 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdi]
add cl, 32 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 10
add dx, -103
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
