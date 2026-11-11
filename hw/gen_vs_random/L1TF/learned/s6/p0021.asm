.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rsi]
test sil, 29
test al, -84
and rsi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rsi]
sub rbx, 30
cmp bl, al
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
sub sil, bl
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
