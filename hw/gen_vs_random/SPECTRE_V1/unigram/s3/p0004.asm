.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc ax, di
or dl, 1 # instrumentation
add al, -47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
sub esi, -120
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], al
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
cmovnbe si, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea rax, qword ptr [rcx + rax + 96]
adc cl, -18
add cl, 22 # instrumentation
cmovns rbx, rdi
add bl, 39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rdx]
sub rsi, 121
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], cl
lea rsi, qword ptr [rdi + rax + 89]
cmovno ecx, edi
cmovno ecx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
