.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
xchg dl, cl
xchg esi, eax
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
setbe cl
or cl, 39
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
add dl, -121 # instrumentation
cmovnp eax, edi
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
lea edx, qword ptr [rsi]
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 68
sbb rax, 717206440
setno sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
