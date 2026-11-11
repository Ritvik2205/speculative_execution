.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 54
jmp .bb_0.1
.bb_0.1:
test sil, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
and rax, 627810357
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
or sil, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
test ax, 4430
or si, -12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
