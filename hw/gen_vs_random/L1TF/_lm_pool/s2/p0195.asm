.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
or dil, -113
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
test dl, 84
cmovno rdi, rbx
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rcx]
or dil, -113
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
cmp dx, 51
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rsi]
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
