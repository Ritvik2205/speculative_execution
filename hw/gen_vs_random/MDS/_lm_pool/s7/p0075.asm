.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 15
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and al, cl
bts rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
btc ecx, 34
or al, 25
and bl, al
and eax, 461212071
test edi, -1252846009
or dl, cl
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
