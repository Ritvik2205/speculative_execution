.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx rbx, si
or esi, -74
setnp dl
mov cl, al
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add cl, -93 # instrumentation
not rdx
lea cx, qword ptr [rax + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
sbb al, 66
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovnb rdx, rsi
lea si, qword ptr [rbx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
cmovle rdx, rsi
mul dil
add cl, -27 # instrumentation
setle cl
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
