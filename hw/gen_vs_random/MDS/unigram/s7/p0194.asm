.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rdx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdx]
cmovs cx, cx
cmovnle bx, di
and rsi, rdi
and dl, -5 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and cl, 122 # instrumentation
cmovl edi, edi
cmovbe esi, ecx
or cl, bl
test al, al
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 76
and al, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rsi]
or rsi, 1
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], si
and dil, 66 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
