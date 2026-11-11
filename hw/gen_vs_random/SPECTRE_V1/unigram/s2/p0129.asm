.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 124 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 95
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
add bl, 70
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 23
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
mov dl, cl
imul cl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
sbb bl, 79
sub bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
