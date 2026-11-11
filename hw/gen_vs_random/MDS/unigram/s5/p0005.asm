.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -108 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rdx]
and dl, 37 # instrumentation
cmovnbe dx, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 122
bt si, bx
xor rcx, 71
or ax, -20176
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
test al, dl
cmovno rdi, rdi
jmp .bb_0.1
.bb_0.1:
and rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rbx
not sil
bts rcx, 39
cmovp ax, si
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
or ebx, -15
and rax, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rax]
cmovbe eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
