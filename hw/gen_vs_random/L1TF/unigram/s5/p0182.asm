.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 59
add dl, 70 # instrumentation
sbb sil, 84
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 8
xor sil, 64
mul ebx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 27
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
add dil, -36 # instrumentation
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 89
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
jmp .bb_0.1
.bb_0.1:
imul rdx, rsi, 87
cmovnle rbx, rdi
add ecx, 84
and rsi, 0b1111111111111 # instrumentation
cmovl si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
