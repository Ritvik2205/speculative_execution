.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 6 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
sub rdx, rbx
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
not bl
lea di, qword ptr [rdi + rbx]
cdq
movzx esi, dl
cmp eax, -127
cmovbe edi, eax
and rax, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rdi]
xchg rsi, rdx
and rdx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
