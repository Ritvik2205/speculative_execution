.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
bt ebx, 84
and rsi, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rsi]
sbb cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
adc dl, -12
sub sil, dil
movzx ecx, sil
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edi
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 59
test al, -82
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
