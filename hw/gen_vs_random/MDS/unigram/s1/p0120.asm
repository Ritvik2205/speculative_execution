.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
xor bl, -102
xor dl, 8
and rsi, rdx
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
or al, cl
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and al, 106
cmovl edi, esi
test si, 54
not sil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
or bl, 13
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
