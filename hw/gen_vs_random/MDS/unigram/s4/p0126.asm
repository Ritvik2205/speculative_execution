.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, cl
and rdi, 80
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
test al, al
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
btc dx, cx
xor ebx, 88
cmovns ax, bx
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rbx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], bx
bt esi, 3
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 4
test cl, bl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, esi
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
