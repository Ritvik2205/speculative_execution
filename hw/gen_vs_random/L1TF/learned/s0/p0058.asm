.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -112 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
cmovl bx, si
and rcx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb sil, byte ptr [r14 + rdx]
cmovs dx, bx
xor al, 14
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -82
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 25
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
add bl, -53 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
lea esi, qword ptr [rdi]
and rdi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], 43
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
mov rdi, -5671708760962025403
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
adc sil, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
