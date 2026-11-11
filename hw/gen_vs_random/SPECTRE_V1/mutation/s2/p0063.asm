.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -125 # instrumentation
cmovb edx, ecx
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], 3
lea esi, qword ptr [rdi + rax + 42536]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
test rax, -1704969603
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rdx
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
add cl, 97 # instrumentation
adc di, bx
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], edx
sub sil, -55
cmovo ebx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
