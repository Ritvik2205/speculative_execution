.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 5
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
xor dl, 8
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and dl, 91 # instrumentation
cmovnle eax, eax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 31
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovnp ecx, esi
or al, 30
and dl, 37 # instrumentation
cmovnbe bx, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdi]
or al, 74
and bl, -58 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
xor rdx, -59
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
