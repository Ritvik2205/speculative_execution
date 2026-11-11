.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
movzx di, dil
cmovns rax, rbx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 56
or eax, 2007177863
movzx dx, dl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or bl, dl
sub sil, -50
jmp .bb_0.1
.bb_0.1:
or al, -71
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rdi]
or al, al
cmp cl, 100
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 4
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
or rax, rbx
and dl, bl
cmovle rbx, rsi
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], 120
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
cmp al, sil
cmp ax, -15409
adc dl, dil
xchg rcx, rbx
mov rsi, rax
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btr dword ptr [r14 + rax], ebx
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rbx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edx, edi
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
cmp bl, bl
cmp ax, -15409
test ax, cx
and rbx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rbx]
imul cl
or al, 109
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
