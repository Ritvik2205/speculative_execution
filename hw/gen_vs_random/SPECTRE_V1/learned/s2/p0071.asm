.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -26 # instrumentation
cmovnp ax, dx
cmovnbe rax, rdi
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ecx
cmovnbe rsi, rax
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
test cl, -49
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], esi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -19
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 127
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
