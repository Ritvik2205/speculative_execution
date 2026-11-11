.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 32
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
btc rax, 7
and rsi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rsi]
and cl, 85 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
bt edx, edi
and dil, -115 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdi]
and al, 33 # instrumentation
cmovnle edx, ebx
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rdi, 0b1111111111111 # instrumentation
cmovb cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rdi]
and al, -56 # instrumentation
cmovl rcx, rdi
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], -23
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], 73
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rdi], esi
xor esi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
