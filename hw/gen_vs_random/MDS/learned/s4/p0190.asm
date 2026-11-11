.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and cl, dl
and cl, -19
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], si
jmp .bb_0.1
.bb_0.1:
xor cl, 55
jmp .bb_0.2
.bb_0.2:
xor eax, 571592471
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
btc dx, 67
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
jmp .bb_0.3
.bb_0.3:
xor sil, cl
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
