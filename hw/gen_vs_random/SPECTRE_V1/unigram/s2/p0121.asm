.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rsi]
cmovnp rax, rdi
adc eax, ebx
sbb dl, bl
sbb cl, dil
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
add al, 19 # instrumentation
setnz al
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
xchg eax, ebx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rbx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
