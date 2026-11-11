.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and al, 84
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
or eax, -1777347252
btr ax, bx
test sil, dl
jmp .bb_0.1
.bb_0.1:
or bl, sil
test eax, 1838539683
or eax, ecx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
or al, 30
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
xor sil, al
xor sil, -126
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
