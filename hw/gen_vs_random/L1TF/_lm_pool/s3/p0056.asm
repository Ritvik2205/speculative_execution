.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bx
lea bx, qword ptr [rbx + rdx]
sub sil, -99
lea si, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 81
jmp .bb_0.2
.bb_0.2:
cbw
btc ebx, 11
xor si, -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
