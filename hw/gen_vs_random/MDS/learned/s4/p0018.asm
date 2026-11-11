.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, -125
test sil, cl
xor sil, 27
btc edi, 230
cmovns rax, rbx
or sil, cl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or cl, dl
test bl, 65
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
or cl, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], bx
and al, 49
and cl, -19
or cl, 30
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
