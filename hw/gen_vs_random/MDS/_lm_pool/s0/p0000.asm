.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and cl, -111
or al, sil
and di, 91
xor cl, -13
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and cx, -2
or bl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
xor dil, -5
not cl
xor bl, 67
test sil, dl
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
