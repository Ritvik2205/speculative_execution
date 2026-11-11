.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmp al, cl
lea eax, qword ptr [rsi + rdi + 31594]
test cl, -49
cmovb dx, dx
lea si, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ecx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
