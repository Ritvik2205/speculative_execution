.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rsi
inc sil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 0
nop
xchg esi, eax
lea ebx, qword ptr [rdx]
jmp .bb_0.1
.bb_0.1:
xor cx, dx
btr dx, cx
lea bx, qword ptr [rdx + rdx]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
cmp sil, -11
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 64
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
