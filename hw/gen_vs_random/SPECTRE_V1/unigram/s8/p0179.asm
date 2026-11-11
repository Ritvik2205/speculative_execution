.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 0
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
lea rdx, qword ptr [rdi + rdx]
and rax, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], cx
add bl, -76 # instrumentation
cmovnle cx, dx
add cl, 46 # instrumentation
sbb rdx, 73
sub bl, -6
add dl, 16 # instrumentation
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 78
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 84
add dil, -56 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdi], edi
sub al, -82
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
