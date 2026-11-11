.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 21
btr ax, 63
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
bt si, 76
cmovnp bx, si
not ecx
or si, 20
and rbx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
xor rcx, rdi
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ebx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
or sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
