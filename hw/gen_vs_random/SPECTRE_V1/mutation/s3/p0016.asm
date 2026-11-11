.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb sil, -78
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
add bl, 70
and ax, 2806
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
sbb dil, -106
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add al, dl
btr ax, 197
and rax, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
imul dl
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
