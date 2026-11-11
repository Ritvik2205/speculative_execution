.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rcx]
or ecx, 37
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and ax, 7954
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
or ebx, ecx
add dil, 88
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
lea esi, qword ptr [rcx + rdx]
test dil, -126
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
inc rax
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], 20
cmp rax, 16650668
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
