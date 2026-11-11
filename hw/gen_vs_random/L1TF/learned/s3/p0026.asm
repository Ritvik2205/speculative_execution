.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 64 # instrumentation
cmovnl rdx, rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rcx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdx]
setnp cl
add al, 31
add bl, -19 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rdi]
btc cx, si
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
jmp .bb_0.2
.bb_0.2:
add al, 71 # instrumentation
setp dl
lea rdx, qword ptr [rdi + rsi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 29
lea rbx, qword ptr [rdi + rcx]
cmovz ecx, edi
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], -93
cmovns cx, cx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edx
movsx edi, dx
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 66
and rbx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
