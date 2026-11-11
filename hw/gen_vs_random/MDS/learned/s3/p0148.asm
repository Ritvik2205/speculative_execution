.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
test al, 91
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
and al, sil
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor ax, -6793
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and al, 82
jmp .bb_0.1
.bb_0.1:
or bl, sil
or ax, -14271
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
and di, 91
not dil
or rax, 302048971
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
