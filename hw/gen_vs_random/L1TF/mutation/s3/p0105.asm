.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 15
sbb ax, -14164
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 48
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
lea ax, qword ptr [rsi + rax + 56494]
and rsi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
inc eax
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
lea rbx, qword ptr [rdx]
cmp rax, 1138518729
and rbx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
dec di
lea rsi, qword ptr [rcx + rdx + 43352]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
