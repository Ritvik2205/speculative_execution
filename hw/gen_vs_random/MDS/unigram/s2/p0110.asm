.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 502418390
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
xor cl, cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and sil, -3 # instrumentation
cmovnb si, ax
and rsi, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
cmovb ecx, eax
jmp .bb_0.1
.bb_0.1:
and cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 18
btc cx, 104
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], ebx
btc cx, 104
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
cmovp edx, edx
btc rbx, 54
bt rdi, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
