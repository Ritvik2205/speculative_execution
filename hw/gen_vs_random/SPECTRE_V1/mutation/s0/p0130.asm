.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
adc sil, sil
sub dl, cl
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
adc esi, -39
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
add bl, dl
and rdx, -98
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
