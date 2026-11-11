.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rcx]
lea edx, qword ptr [rdx + rcx]
xor bl, bl
and rax, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
cmovb eax, eax
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], -110
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], ecx
jmp .bb_0.1
.bb_0.1:
add cl, cl
cbw
adc ebx, 65
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
add al, -48 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rsi]
cmovp ecx, ebx
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
