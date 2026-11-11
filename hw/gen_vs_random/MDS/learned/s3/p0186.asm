.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and al, 14
or bl, sil
or al, sil
or sil, -78
test esi, 425331143
and al, dl
or al, 74
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
or al, 74
bt bx, si
and rax, 627810357
xor sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
