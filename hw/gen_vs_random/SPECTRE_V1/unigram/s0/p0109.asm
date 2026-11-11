.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rsi], ebx
neg ax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], edi
inc ebx
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rsi], dx
sub cl, dl
jb .bb_0.1
jmp .exit_0
.bb_0.1:
or al, dil
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx rdi, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], ecx
lea edi, qword ptr [rax]
and rax, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rax], 89
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], sil
add dl, -11 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
