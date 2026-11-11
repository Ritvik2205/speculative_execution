.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdx]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
imul rsi, rsi, 68
setbe dl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], dil
sbb al, 77
and rdi, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rdi], 90
xor bl, bl
xor ecx, 41
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
add dl, 61 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], esi
sbb dl, bl
cmovz edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
