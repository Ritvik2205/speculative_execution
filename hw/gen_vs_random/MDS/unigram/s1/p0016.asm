.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rdx
or dl, al
and rsi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rsi]
test ebx, 245771113
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdi], dx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], dx
btc rax, rcx
test al, -59
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 87
and rax, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and bl, 122 # instrumentation
cmovnbe ebx, eax
and rsi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
btc ax, 68
bt rbx, rdi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 11
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rsi
cmovp eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
