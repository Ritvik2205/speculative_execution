.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
test al, sil
and dl, -73
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
test al, 127
xor rax, -1657511731
and dl, dl
and rdx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
test eax, 1287331633
and sil, al
xor cl, bl
xor rax, -1499464454
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
