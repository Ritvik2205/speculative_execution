.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rcx], -6
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btc word ptr [r14 + rdi], bx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -111
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rsi]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
and eax, 933895314
and rdx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rdx]
sets al
and rcx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 85
setnle dl
cmovnbe eax, esi
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], sil
add bl, 39 # instrumentation
cmovo ecx, esi
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
