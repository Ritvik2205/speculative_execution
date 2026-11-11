.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
add cl, 19
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rbx]
add cl, bl
sub cl, 32
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
add al, sil
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
lea rsi, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
adc ax, ax
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
bts esi, 243
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
