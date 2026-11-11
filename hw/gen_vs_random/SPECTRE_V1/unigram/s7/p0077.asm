.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dil, 83
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
mov dil, bl
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 27
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], -36
jno .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
add al, 19 # instrumentation
setnz cl
cmovnle cx, ax
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], al
add cl, 11 # instrumentation
cmovns esi, ecx
and rcx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdi], dx
cmp eax, ebx
xor al, -74
setnle dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
