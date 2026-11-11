.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
add bl, -76 # instrumentation
cmovnle ax, di
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 61
btr eax, 55
add al, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], edi
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb ax, si
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
xor sil, dil
add bl, 97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rcx]
cmovnz bx, bx
imul eax, eax, 28
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
