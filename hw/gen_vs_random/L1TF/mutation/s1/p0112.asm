.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -116 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rsi
and rdx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -55
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
or eax, -401020526
xor cx, si
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 1266701637
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
inc bl
and cl, cl
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
movzx edx, ax
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rdi
test al, -82
lea ax, qword ptr [rdi + rdx + 24773]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
