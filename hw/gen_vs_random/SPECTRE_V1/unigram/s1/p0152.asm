.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
add al, -36 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
cmp bl, bl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and cl, -57
cmp rbx, 65
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
inc edx
lea ax, qword ptr [rdi + rcx]
sbb esi, 70
and rdi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdi]
imul ebx, esi
movsx ebx, bx
add bl, dil
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], cx
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
