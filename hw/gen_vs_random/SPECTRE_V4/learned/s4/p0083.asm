.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, -66
test al, 52
and rcx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rcx]
and al, 59
add dil, cl
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
or sil, -47
dec dil
add dil, -61
and rax, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
sub dil, bl
cmp al, 114
cmp dl, 45
adc sil, -31
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
add bl, dl
sbb dl, -71
xor ax, -29507
or cl, 12
and al, 5
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and ax, 13045
cmovz esi, eax
mov dl, 81
inc bl
add al, 40
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
adc dl, sil
sbb bl, -79
or al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
