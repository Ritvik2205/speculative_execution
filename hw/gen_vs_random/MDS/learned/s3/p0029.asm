.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], eax
or cl, al
and sil, dil
xor dil, -70
bt di, bx
test di, 27
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
and dl, dl
and rsi, 98
test ecx, -1843375753
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
xor rax, -843636050
and sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
