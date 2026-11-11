.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
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
lea rbx, qword ptr [rdx]
imul ecx
lea di, qword ptr [rax + rdx]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
test dil, 18
test bl, 2
and rdx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
