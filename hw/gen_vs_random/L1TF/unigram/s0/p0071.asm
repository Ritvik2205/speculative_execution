.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ecx
lea edx, qword ptr [rbx + rbx]
add al, 112 # instrumentation
cmovnle edi, eax
sub dil, 87
and rdi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdi]
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
xchg bl, dil
add dl, 27 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rax]
xor cl, 89
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
sbb cl, sil
sets cl
not ebx
or edi, 1 # instrumentation
and edx, edi # instrumentation
shr edx, 1 # instrumentation
div edi
add dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
