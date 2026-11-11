.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, 27
test al, 114
xchg al, cl
add dl, 109
inc edi
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and dil, -120
add bl, 54
add cl, dil
and al, dl
adc sil, -63
and al, 75
or al, al
or al, 1
and bl, -30
or dl, dl
xchg edi, eax
xor dil, -23
and al, 59
sbb bl, -98
or al, al
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
