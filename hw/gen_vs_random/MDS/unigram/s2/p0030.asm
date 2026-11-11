.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 15748
bts bx, ax
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
or dl, -21
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 64
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], si
xor di, 93
xor eax, -127
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
and al, 75
and cl, -44 # instrumentation
cmovno rcx, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 22
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
and cl, 79
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
cmovbe esi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
