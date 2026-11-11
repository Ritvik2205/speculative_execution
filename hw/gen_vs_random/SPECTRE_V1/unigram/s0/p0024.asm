.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rdi], cx
add bl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
lea esi, qword ptr [rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
bt ecx, ebx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test rdi, rcx
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
xchg cl, dl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
