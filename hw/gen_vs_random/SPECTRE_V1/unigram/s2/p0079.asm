.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
setns al
and rax, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rax]
imul eax
and rsi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rsi]
and rdx, -98
and rsi, 39
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
add ecx, 3
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 24
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
bts dx, 26
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
sbb bl, 79
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
