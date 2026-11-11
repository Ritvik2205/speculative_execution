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
sub dword ptr [r14 + rdi], -19
lea esi, qword ptr [rdi + rax + 42536]
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
lea rbx, qword ptr [rdx]
and rcx, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], bx
jnbe .bb_0.2
jmp .exit_0
.bb_0.2:
add dl, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], edi
bts edi, 83
mov bl, al
xor dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
