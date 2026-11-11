.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, 0b1000000000000000 # instrumentation
bsf dx, di
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
lea ax, qword ptr [rax + rcx + 47]
cmovnp rdx, rdx
add dx, -51
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and rcx, 0b1111111111111 # instrumentation
cmovz ax, word ptr [r14 + rcx]
not ebx
lea cx, qword ptr [rbx + rbx + 64]
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
sbb bx, 9
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 45
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
and rdx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
