.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, -76
xor dil, -70
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and al, -114
not dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
xor bx, 75
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 29
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and bx, 11
test rbx, 27
not sil
or al, bl
not al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
