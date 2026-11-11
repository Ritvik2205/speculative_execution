.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 91 # instrumentation
cmovnle edx, edx
btc ax, 78
jmp .bb_0.1
.bb_0.1:
test al, sil
jmp .bb_0.2
.bb_0.2:
jp .bb_0.3
jmp .bb_0.4
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], ebx
xor bl, sil
and rbx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rbx]
jmp .bb_0.4
.bb_0.4:
test cl, 73
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
xor dl, cl
and cl, dil
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
bts si, 158
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
or al, -58
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
