.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, rax
and dl, al
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdx], bx
movsx si, dl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
not dl
cmp al, al
sbb dl, bl
sbb bl, -94
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdi], ax
jmp .bb_0.1
.bb_0.1:
or rax, -263404965
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rcx], cx
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
