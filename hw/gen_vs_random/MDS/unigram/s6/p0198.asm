.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
and al, -82 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rsi]
or al, al
test ax, dx
cmovbe edx, eax
or bl, 13
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rdx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdx]
cmovs di, si
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 40
bt rcx, 31
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
or dl, dil
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 24
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or rsi, 55
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
