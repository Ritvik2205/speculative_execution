.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cx, 30
bt di, si
and rsi, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
sub cx, ax
and rax, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rax]
lea ecx, qword ptr [rdi + rbx + 55]
and rdi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdi], rax
sbb al, cl
neg al
cmp dl, -93
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
