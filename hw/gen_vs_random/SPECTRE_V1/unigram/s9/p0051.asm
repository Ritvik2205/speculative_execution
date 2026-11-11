.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, dil
setnl sil
and rdi, 0b1111111111111 # instrumentation
cmovb esi, dword ptr [r14 + rdi]
mul dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
xchg dl, bl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 97
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 78
test dil, -116
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
sbb al, -14
and rbx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rbx], ax
cmp cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
