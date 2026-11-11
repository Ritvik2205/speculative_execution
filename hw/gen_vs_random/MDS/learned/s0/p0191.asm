.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
btc cx, 115
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 5
test cl, sil
test ebx, -2015966884
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
test al, 22
xor sil, cl
and dl, dil
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
not dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
