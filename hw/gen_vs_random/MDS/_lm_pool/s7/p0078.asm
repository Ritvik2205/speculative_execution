.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -12492
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
not al
or al, 24
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 75
xor dl, 34
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 36
test esi, 1857129931
or sil, -49
xor dl, cl
or sil, dil
test sil, -96
and al, -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
