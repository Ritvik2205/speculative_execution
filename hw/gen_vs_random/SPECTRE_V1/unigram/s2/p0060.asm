.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -122 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
setns bl
and rdi, 0b1111111111111 # instrumentation
cmovno ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rax], 55
jle .bb_0.1
jmp .exit_0
.bb_0.1:
lea ax, qword ptr [rax + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
imul bl
btr rcx, rsi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 36
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
add dl, 116 # instrumentation
cmovbe rdx, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
