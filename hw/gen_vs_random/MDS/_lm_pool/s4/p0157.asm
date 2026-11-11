.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
xor rax, -843636050
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rsi
xor dl, 34
test al, 127
or sil, dil
test sil, 41
test dil, -51
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdx
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
test al, cl
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], si
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
test al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
