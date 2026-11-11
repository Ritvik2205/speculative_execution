.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and ax, -4410
or al, sil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
test bl, -114
xor al, dl
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
or al, dil
xor cl, 24
or rax, 1461812833
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
