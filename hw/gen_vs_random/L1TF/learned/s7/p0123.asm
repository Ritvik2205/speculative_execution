.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rcx, rcx
sbb dl, sil
sbb al, dl
xchg ebx, edi
and rax, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rbx]
or edi, 11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
