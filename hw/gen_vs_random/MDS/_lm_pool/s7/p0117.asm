.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 81
xor dil, -70
test bl, -9
xor al, -89
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
test dil, 46
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
not al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
xor bl, cl
and ax, 339
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
