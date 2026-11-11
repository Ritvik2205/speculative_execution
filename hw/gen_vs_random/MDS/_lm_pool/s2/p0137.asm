.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dil, 12
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
and al, 35
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
btr ax, 193
and dl, dil
and al, sil
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dil
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
bt edi, 17
or dl, bl
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rdx], eax
and rax, 1250429750
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
