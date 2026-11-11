.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
or al, 24
test dil, -80
xor rax, -270810088
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 84
and al, 14
jmp .bb_0.1
.bb_0.1:
xor ax, 23633
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and dx, 3
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
xor al, -26
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rsi
and al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
