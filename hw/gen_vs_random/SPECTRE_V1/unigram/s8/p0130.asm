.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 34
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
add dil, -75
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rbx
mul rcx
sub al, dl
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
cmovnp di, di
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
mov dl, al
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], sil
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
