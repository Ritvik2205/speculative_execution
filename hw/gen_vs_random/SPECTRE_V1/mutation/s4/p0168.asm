.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
adc sil, sil
sub dl, cl
movzx cx, bl
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], cl
add al, 78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
add bl, dl
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rcx], ax
and rdx, -98
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -70
adc esi, -66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
