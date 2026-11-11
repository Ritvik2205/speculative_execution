.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
or si, 94
or al, 37
xor bl, -102
test rax, 337705873
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and eax, 561041355
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
test esi, 425331143
and rdx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rsi
not al
test edi, -1252846009
not dil
xor al, -26
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and sil, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
