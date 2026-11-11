.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
and sil, -56
not bl
and al, cl
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and eax, 454700988
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and cl, -6
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 84
or al, 74
or al, -58
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
and edi, 23
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
xor dl, -43
cmovnp rdi, rdx
jmp .bb_0.1
.bb_0.1:
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
