.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -95
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], dx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 43
sbb dl, 127
cmovnle eax, edi
and rsi, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rsi], 48
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 3
seto al
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 66
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and bl, -65
movsx edi, al
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
sub si, 32
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
