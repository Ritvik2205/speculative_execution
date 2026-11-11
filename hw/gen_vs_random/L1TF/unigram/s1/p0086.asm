.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
lea rbx, qword ptr [rsi]
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], esi
add cl, 121 # instrumentation
cmovs eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], sil
bt cx, bx
jmp .bb_0.1
.bb_0.1:
and sil, 110
or bl, 61
imul cl
add rdx, rcx
cmovb rbx, rdx
and rbx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
