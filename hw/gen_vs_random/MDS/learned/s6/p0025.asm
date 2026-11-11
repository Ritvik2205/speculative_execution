.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -120554987
or sil, bl
cmovz eax, edi
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and cl, 79
xor dl, cl
or rax, -141551502
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
not dl
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
