.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add si, di
test ecx, edx
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 3
and rdx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rcx]
add dl, -65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], 42
jno .bb_0.1
jmp .exit_0
.bb_0.1:
mov dl, 44
adc al, -92
bt ebx, esi
xchg esi, edi
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
xchg dil, bl
movsx ebx, bl
sub rsi, 97
adc dl, 107
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
