.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp ax, di
xchg dil, bl
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 62
add bl, 13 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rdi]
setnz cl
bt rdi, rbx
lea rdx, qword ptr [rbx + rax + 36]
lea edx, qword ptr [rsi]
lea rdi, qword ptr [rcx]
jmp .bb_0.1
.bb_0.1:
and bl, cl
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
mov al, -102
btc rcx, rdi
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
