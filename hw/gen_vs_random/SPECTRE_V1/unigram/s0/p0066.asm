.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 19
add al, 41 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
movsx bx, bl
and si, 73
add bl, -41 # instrumentation
xchg bl, al
imul rdx, rsi, 44
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
xor rcx, 35
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rdi]
dec ebx
and rbx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rbx], 11
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
