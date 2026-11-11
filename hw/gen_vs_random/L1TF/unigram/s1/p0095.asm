.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdi]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 2
bt edx, eax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 30
sub ecx, 32
lea rbx, qword ptr [rax + rdi]
adc cl, al
and rdx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
lea di, qword ptr [rax + rax + 37]
mov dil, 36
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
or rcx, 1 # instrumentation
and rdx, rcx # instrumentation
shr rdx, 1 # instrumentation
div rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
