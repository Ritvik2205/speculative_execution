.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -78
and cx, -8
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
not dl
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rsi
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
test dl, -85
xor dl, bl
and cl, 79
xor dil, 8
and rbx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rbx]
and ax, 5001
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], ecx
xor dil, dl
and rax, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rax]
test rdx, 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
