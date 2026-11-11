.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edx
and dil, -62
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
xor al, dil
xor dl, bl
and cl, dil
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
or dl, bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
xor cl, 83
or sil, al
and cl, al
or sil, sil
or cl, dl
and bl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
