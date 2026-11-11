.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -6 # instrumentation
cmovnb edi, eax
sbb al, dl
and rdx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdx]
not edi
mov esi, eax
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
cmovno eax, eax
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], al
adc al, -103
seto bl
cmp ax, -31327
and rcx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rcx]
adc al, al
mov bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
