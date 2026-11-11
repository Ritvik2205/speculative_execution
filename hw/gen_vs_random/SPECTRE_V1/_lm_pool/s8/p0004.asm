.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, dx
inc al
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], rax
sub rsi, 97
and rdx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and ax, 25351
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sbb sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
