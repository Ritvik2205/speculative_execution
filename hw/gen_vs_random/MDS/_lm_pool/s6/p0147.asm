.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and dil, cl
test rdx, 99
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
test bl, 65
or rcx, 54
and cl, dl
test sil, al
xor dl, -19
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
xor rbx, 89
and ax, 31082
xor dl, al
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
