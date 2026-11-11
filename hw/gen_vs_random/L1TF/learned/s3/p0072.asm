.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rsi]
adc rbx, 75
lea dx, qword ptr [rcx + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], 771970974
add al, 31
cmovo ax, dx
lea ecx, qword ptr [rbx + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
and rsi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rsi]
test sil, 32
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rcx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
test rax, -866236703
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
bt dx, bx
and rdx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
