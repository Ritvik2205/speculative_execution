.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rbx]
sbb bl, -41
and rsi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 35
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 62
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
imul dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1164392837
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
not cl
xchg sil, sil
lea rcx, qword ptr [rcx + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
