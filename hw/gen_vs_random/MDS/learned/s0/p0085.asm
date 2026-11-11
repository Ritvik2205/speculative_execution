.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ecx
and rbx, 65
or dl, -89
xor al, 9
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and cl, -6
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or al, -61
xor al, 34
jmp .bb_0.1
.bb_0.1:
or al, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
