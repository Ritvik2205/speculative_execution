.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
or rbx, rdx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 1
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
cmp bl, cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
add rdx, 95
sub dl, -48
add rdi, 17
and rdx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rdx]
btr eax, ebx
xchg dl, dil
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
