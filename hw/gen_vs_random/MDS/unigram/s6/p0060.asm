.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test cl, -86
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
and ax, -10351
cmovns rax, rbx
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
and bl, 56 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
and ax, di
or dl, sil
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rsi, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rsi]
cmovnb edi, eax
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and rax, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rax]
and dl, 60 # instrumentation
cmovnl edx, ecx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], edx
and rbx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rbx]
bts bx, 3
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
