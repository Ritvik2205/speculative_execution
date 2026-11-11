.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
adc al, -58
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, edi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 80
mov si, 29
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
adc al, -58
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 4
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 5
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, edx
sub sil, -36
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
cmovns eax, edi
and al, -127
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
