.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, -101
btr eax, 253
cmp al, sil
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 52
sbb dl, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
not bl
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
movzx cx, dl
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
movsx si, sil
xor bx, 74
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
add cl, -5 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], dx
cmovno rdx, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
