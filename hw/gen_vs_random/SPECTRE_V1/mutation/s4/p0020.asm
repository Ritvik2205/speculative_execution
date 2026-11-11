.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
adc dx, bx
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
and rax, 2134929425
cmp bl, -114
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], cl
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 123 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rax], di
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rcx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
mov eax, 1492571274
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
