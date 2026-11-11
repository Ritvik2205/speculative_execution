.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 16
and dil, -62
or rbx, -77
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and cl, dil
not al
or al, al
or sil, dl
xor cl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 34
and al, sil
and sil, 89
xor dl, -59
xor dl, -59
or al, -58
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
