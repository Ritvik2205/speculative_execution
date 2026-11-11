.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 126
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 74
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 91
cmovb cx, si
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 5
or bx, 1
and rcx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rcx]
bt edx, edi
cmovnl rax, rax
xor eax, 73
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rcx]
cmovs esi, eax
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 119
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edx
bts rbx, rbx
and dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 51
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
