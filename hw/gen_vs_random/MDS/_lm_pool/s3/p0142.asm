.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
bts rsi, rax
and cl, -111
btr eax, edi
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
and cl, bl
and si, -121
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
bt edx, edi
xor sil, -46
bt rdx, 76
xor al, dil
test dil, 46
or al, 16
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
or al, 24
or bl, dl
xor ax, -23364
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
