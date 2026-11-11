.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
adc dl, dl
and rsi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 7
add cl, -123 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
cmovb edi, edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, cl
lea si, qword ptr [rcx]
sub bl, dl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 69
cmovo ecx, ebx
add cl, 75 # instrumentation
sbb cl, dil
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
