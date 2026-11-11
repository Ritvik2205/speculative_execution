.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not eax
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 85
or sil, sil
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -41
cmovnl rsi, rsi
and al, -56 # instrumentation
cmovl rdx, rax
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
bt esi, 44
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
xor cl, -79
cmovnb di, di
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 8
and al, sil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rbx]
xor dil, dil
bts rbx, 21
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
