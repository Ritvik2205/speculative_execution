.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 21
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 30
test dil, bl
and rcx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], ebx
lea rcx, qword ptr [rbx]
bswap rax
add bl, -41 # instrumentation
xchg sil, al
add dl, 6 # instrumentation
adc rax, -384715932
xor rcx, 91
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
bts rax, 140
movzx di, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
