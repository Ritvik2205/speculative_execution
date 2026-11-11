.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, 55
cmp esi, -84
movzx si, cl
xor bl, -126
and bl, -119
and rcx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rcx]
sub al, dl
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xchg al, bl
or al, -16
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
and al, -87
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
