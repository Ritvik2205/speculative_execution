.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], ax
and bl, al
cmovb bx, ax
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
add cl, 0 # instrumentation
adc bl, dil
cmovbe edx, ecx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], ecx
sbb cl, dl
add edx, 72
not edi
cmovb eax, ecx
sbb sil, -78
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
cmovb ebx, eax
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
