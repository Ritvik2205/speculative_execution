.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, cx
and rcx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
xor dl, dil
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
bt si, di
and sil, 89
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 11
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor di, 93
not bl
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or al, -24
and ax, -4410
sbb bl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
