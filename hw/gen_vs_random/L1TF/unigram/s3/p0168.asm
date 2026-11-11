.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dil, al
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
cmp sil, dil
xor dil, 2
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
adc rsi, 29
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 3
cmovb bx, di
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], bl
sbb rbx, 23
lea ax, qword ptr [rcx + rax]
cmovbe edi, esi
mov dl, sil
add dl, sil
lea cx, qword ptr [rdi + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
