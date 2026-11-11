.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
btr edi, ecx
setz bl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], 18
cmovbe ebx, ecx
imul rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rdx]
xchg eax, edi
and rcx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdx
and rsi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rsi]
add bl, -37 # instrumentation
dec al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
