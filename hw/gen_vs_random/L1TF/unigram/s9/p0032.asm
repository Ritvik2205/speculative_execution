.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rbx]
add bl, dil
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 28
add sil, -61
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
or dil, -113
mov dil, sil
btc ebx, ebx
and rdi, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rax]
cmovns edi, edx
sub cx, 17
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
