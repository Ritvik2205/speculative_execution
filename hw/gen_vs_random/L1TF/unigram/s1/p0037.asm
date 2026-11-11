.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -73
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -63 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], di
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 116
and sil, sil
seto cl
bts rdi, rdx
add bl, -95 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rbx]
or eax, edx
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], 103
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
