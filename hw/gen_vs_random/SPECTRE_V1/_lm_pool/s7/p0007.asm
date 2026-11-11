.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
test al, 40
and rdi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdi], ecx
test al, 42
sub al, -89
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
inc al
lea di, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
xor al, -89
lea cx, qword ptr [rsi + rax + 3]
lea rax, qword ptr [rcx + rbx]
cmp dil, sil
sbb sil, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
