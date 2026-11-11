.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rsi]
xor cl, dil
lea rdx, qword ptr [rdx + rdi + 65]
and rdx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rsi]
movzx rax, dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rbx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rcx]
add bx, 69
setno dl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdi]
add cl, 69 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
