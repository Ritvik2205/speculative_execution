.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnbe rax, rax
mov cx, 50
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdi
test sil, 46
mov rbx, 9101099553822202722
test ecx, 3
add bl, dl
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
add bl, bl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
or rdi, rax
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 67
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
xor cl, al
cmovs rcx, rbx
bts rbx, rbx
and rdx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdx]
btc rax, 85
test dil, 12
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
mov rax, -8696242625349627833
and rdx, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdx]
bt edi, 53
movzx rdi, cx
cmovb ecx, ecx
sub ax, cx
xor sil, sil
cmp dil, -124
or al, al
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and rbx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rbx]
test edx, 573099753
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
sbb dl, -99
and rdi, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], 57
sbb dil, 47
or al, dl
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
mov rcx, 5862286138240743445
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
xchg rdi, rdx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], al
sub al, 50
or bl, 1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
