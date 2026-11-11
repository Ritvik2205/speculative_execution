.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 87
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 0
xor bl, 67
or bl, sil
and rdx, 58
jmp .bb_0.1
.bb_0.1:
and eax, 461212071
or cl, -77
and eax, 943733866
or dil, dl
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
