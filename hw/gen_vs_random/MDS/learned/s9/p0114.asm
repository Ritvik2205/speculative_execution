.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
test ax, bx
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
test dl, 9
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rsi]
test sil, 41
bts ecx, 184
test bl, 65
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
test rsi, 70
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rbx]
and ax, 27170
jmp .bb_0.2
.bb_0.2:
test eax, -1634766116
and rdi, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
