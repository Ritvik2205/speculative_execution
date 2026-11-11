.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
or edx, eax
xor rax, -1128378406
test al, dil
test bl, -9
xor sil, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
or si, 94
or al, 74
xor cl, 98
xor bl, -88
xor bl, -102
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
xor dl, -43
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
