.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -103 # instrumentation
cmovbe ax, ax
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
or dl, -92
xor rax, 20
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
seto al
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
