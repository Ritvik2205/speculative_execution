.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rdx]
cmp eax, -813838876
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
xor dl, sil
and eax, 1913354318
mov bl, dil
and dil, -23
movzx cx, al
adc dl, dil
inc al
and rax, 1072797615
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
not sil
cmovnle rsi, rdi
mov dl, al
sbb cx, 29
cmovno di, bx
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
sub dil, -28
add dl, -82
add dl, 109
add al, -4
dec dil
btc rdx, rdi
sbb edx, 77
sbb al, -43
add sil, dil
and al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
