.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 15 # instrumentation
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rax]
dec bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -702719947
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], bx
jmp .bb_0.1
.bb_0.1:
add bl, 91
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
add dil, 34
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 59
sbb eax, 544669545
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdx
setp sil
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
