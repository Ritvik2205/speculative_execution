.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
btr eax, esi
cmovb eax, edi
cmovno rdx, rsi
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
bts rdx, 200
cmovns eax, ebx
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
or rbx, -77
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdx]
test dil, -51
and dl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
cmovs cx, cx
and rsi, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rsi]
bt esi, 3
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 77
and rbx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
