.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, ax
or al, bl
xor sil, 27
or al, -22
xor rsi, -117
test cl, sil
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 24
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
bt si, di
xor bl, dl
and al, 87
and rcx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rcx]
test esi, 425331143
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
