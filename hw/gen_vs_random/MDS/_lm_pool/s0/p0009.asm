.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and al, 75
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and sil, dil
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
test cl, bl
test dil, -80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
