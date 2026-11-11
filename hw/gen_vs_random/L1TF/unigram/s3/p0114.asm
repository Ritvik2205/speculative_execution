.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 63
xor cx, -79
cmp eax, edx
cmovo rax, rdi
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 85
lea rdi, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rcx]
and rax, 363226538
jmp .bb_0.1
.bb_0.1:
cmovnz eax, esi
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 81
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 21
xor sil, 84
xchg bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
