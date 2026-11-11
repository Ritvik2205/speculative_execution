.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or sil, -49
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or al, -78
and rsi, 24
and cl, bl
or bl, dil
or ax, 30524
and rcx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rcx]
or cl, 7
and al, 49
xor bl, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
