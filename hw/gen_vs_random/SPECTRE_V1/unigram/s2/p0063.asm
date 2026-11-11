.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ebx, ecx
add bl, -9 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rsi]
cmovns rbx, rcx
and rcx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rcx], 6
btc esi, 55
and rdx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rdx]
add bl, -95
cmovs ecx, eax
dec dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xchg bl, bl
sub rbx, -11
sbb ecx, ebx
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
bt si, dx
add sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
