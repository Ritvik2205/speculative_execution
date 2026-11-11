.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
or dx, 0b1000000000000000 # instrumentation
bsf si, dx
btr ecx, esi
and rbx, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
sub sil, -87
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and edx, 44
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 84
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
xor rcx, rcx
and rsi, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rsi]
xchg ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
