.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rcx]
add cl, 46 # instrumentation
sbb rdx, 93
movzx ecx, bx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], -88
and rbx, rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul ebx, ecx, 44
test al, -99
lea ax, qword ptr [rdx + rax + 36518]
and rsi, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rsi]
sbb cl, 105
add dl, 47
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
sbb cl, dl
and di, 5
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
lea rbx, qword ptr [rax + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
