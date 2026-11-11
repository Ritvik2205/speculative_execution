.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
sbb sil, sil
sbb dil, al
test bl, 12
or bx, 0b1000000000000000 # instrumentation
bsf di, bx
jmp .bb_0.1
.bb_0.1:
setp cl
dec cl
sub bl, al
cmovnle edi, esi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
or dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
adc rdi, rdi
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
