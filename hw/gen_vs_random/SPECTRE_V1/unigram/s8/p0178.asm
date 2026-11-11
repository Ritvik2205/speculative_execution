.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, -75
xchg al, al
and rsi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
test ax, 19339
jp .bb_0.1
jmp .exit_0
.bb_0.1:
not cx
sbb dil, sil
add dl, -27 # instrumentation
sets dl
test bl, -8
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
dec bl
xchg esi, edx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdx
mov cx, 31310
cmp cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
