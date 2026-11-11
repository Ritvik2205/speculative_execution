.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
xor rax, -773894210
and cl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 99
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
and sil, al
test bl, al
and dl, -73
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
xor dl, -43
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
