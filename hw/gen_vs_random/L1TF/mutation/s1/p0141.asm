.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
xor cx, si
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and cl, cl
test al, -70
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
lea ax, qword ptr [rdi + rdx + 24773]
or eax, -62
inc bl
movzx edx, ax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
