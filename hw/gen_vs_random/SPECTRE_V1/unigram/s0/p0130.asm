.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rdi, 13
test rdx, 1657596343
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 47
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or al, dl
lea dx, qword ptr [rcx + rsi]
sbb al, al
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], ax
mov bl, dil
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 913863268
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
and di, 11
lea bx, qword ptr [rsi + rax + 92]
add dl, 24 # instrumentation
lea rdx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
