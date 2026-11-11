.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rsi]
add bl, 113 # instrumentation
setbe dl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
xchg rax, rdi
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
lea rdi, qword ptr [rsi + rax]
cmovb ecx, edi
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
imul bx, si
jmp .bb_0.1
.bb_0.1:
btr edi, eax
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
setns al
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 36
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
test cl, 87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
