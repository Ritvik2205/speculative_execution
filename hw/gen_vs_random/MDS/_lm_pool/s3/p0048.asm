.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
or dil, -78
xor al, dl
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and sil, -69
or dil, -76
and al, -54
xor bl, sil
or al, bl
and ax, 27170
btc ecx, 47
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
or sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
