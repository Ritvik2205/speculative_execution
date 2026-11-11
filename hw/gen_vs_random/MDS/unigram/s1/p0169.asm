.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rbx]
and bl, 34
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
cmovnle rcx, rdi
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 50
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
cmovnbe bx, dx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and dx, 86
test rdi, 100
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 33
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
btc ecx, 28
btc rbx, rax
cmovns rax, rdx
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and bx, ax
cmovnb dx, dx
xor sil, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
