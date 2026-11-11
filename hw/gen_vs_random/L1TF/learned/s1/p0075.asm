.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
test bl, 68
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 5
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmp dil, sil
sub sil, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
