.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rdi]
neg dl
add dil, -75
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
lea rax, qword ptr [rdi + rbx]
xor sil, -33
and rax, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rax
bswap rsi
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
adc bx, 23
add al, -72
and rdx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
