.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, dl
bts rbx, rsi
or al, bl
test ecx, -1843375753
and dl, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
test cl, 101
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rsi], eax
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and cl, cl
test dil, al
jmp .bb_0.2
.bb_0.2:
test rax, 1207043993
or si, 94
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
