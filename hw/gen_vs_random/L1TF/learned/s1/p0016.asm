.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, -1143711697
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
add dl, dil
xor cl, sil
setp cl
sub cl, 32
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
bswap rax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb si, bx
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
adc dl, bl
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 76
sbb rax, -1477844571
cmovo si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
