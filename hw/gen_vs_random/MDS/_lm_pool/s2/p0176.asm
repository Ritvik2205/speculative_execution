.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bx, 5
jmp .bb_0.1
.bb_0.1:
and edi, 23
and rdi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdi]
test dl, dil
or dil, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and cl, -6
xor ax, -6793
or ecx, esi
test sil, dl
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
