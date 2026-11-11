.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
or rax, -3
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
dec rsi
add esi, 49
sbb bl, 79
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], bl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
cmovle rdx, rax
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
or ecx, eax
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
cmp al, 23
movsx cx, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
