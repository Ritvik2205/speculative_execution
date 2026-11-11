.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -75
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dil
test al, bl
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and cl, sil
or al, 25
jmp .bb_0.2
.bb_0.2:
and al, sil
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 6
btc dx, 67
bt edi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
