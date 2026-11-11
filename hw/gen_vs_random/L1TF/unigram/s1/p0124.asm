.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
add dl, 76 # instrumentation
sbb si, 5
and rbx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdx
add bl, 3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
sbb dil, 68
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 75
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
or bl, 114
sbb ecx, ebx
cmovz rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
