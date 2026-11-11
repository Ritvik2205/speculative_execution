.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
inc cl
movzx rax, bl
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
and al, 33 # instrumentation
cmovnle ebx, esi
cmovnb dx, di
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], 90
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
jmp .bb_0.2
.bb_0.2:
xor sil, sil
bts rsi, 89
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
or ax, 19243
btr rsi, 73
and rax, -1909598591
btc rsi, 51
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
