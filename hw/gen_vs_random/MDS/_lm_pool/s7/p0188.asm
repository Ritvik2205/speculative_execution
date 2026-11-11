.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, -15
bt cx, ax
and rax, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rax]
test al, sil
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
or dl, cl
or al, -17
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dl
jmp .bb_0.1
.bb_0.1:
bt ebx, eax
xor cl, 55
xor rcx, 71
jmp .bb_0.2
.bb_0.2:
test si, 47
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
