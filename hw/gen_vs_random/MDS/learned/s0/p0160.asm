.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and ax, 339
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edi
test al, dl
and dil, -39
xor rbx, 89
or dil, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
xor eax, 1640090871
and eax, 33
xor dil, -124
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdi
test al, dil
and rdi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
