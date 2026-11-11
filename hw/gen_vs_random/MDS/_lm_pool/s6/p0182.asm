.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, sil
xor cx, -18
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rax]
or cl, dil
or rax, -1561934807
xor dl, al
test ebx, -961564216
and al, sil
and ax, -4410
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and dil, -62
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or sil, -49
or al, 30
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
