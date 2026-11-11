.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
xor sil, 27
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
test edi, -1252846009
bts rdx, 200
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
xor rcx, 71
or bl, 100
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
bt dx, ax
or rax, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
