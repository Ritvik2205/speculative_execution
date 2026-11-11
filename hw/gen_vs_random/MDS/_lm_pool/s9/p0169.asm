.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
or cl, cl
and rsi, 58
test al, cl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdi]
or sil, -49
test eax, 158941032
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 3
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], -72
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and esi, 72
xor bl, -61
jmp .bb_0.2
.bb_0.2:
and edi, 23
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
