.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rsi + rax + 40]
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
sub cl, dl
sub dil, dil
xchg al, dil
xchg rax, rsi
btr rax, 92
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 68
add sil, -68
add bl, -95
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
