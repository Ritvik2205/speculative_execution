.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul eax
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
cmovb rbx, rax
add bl, -9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], -31
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dil
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 65
cmovb edx, edi
add dl, -11 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rbx]
setnbe dil
neg si
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rsi], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
