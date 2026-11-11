.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 33
add dil, 72
mov dl, bl
cmp al, 62
lea rdx, qword ptr [rdi + rcx + 59295]
lea eax, qword ptr [rsi]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
sbb dl, dil
lea rbx, qword ptr [rdx + rbx + 49]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
cmp al, 46
cmp dl, -115
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
