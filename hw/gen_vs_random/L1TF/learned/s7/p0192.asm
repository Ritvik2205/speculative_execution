.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rcx]
cmp rax, 921820217
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
xor dil, dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
sbb sil, cl
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 55
and rdx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdx]
lea esi, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
