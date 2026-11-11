.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, -114
sbb cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdx]
add sil, 2
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
cmp bl, -114
cmp sil, 25
and rcx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rcx]
or dl, dil
and rdx, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rax
and al, sil
sbb dl, 127
cmovle rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
