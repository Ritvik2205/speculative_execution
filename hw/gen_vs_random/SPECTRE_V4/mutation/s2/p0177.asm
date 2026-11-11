.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dx, di
add bx, bx
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
adc rax, 519150753
imul dx, dx
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 113
and rdx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 97
mov bl, dl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rcx]
mov bl, al
btr esi, esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ecx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
cmovb cx, dx
bts rdx, rax
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
test rdx, rcx
mul dil
neg rcx
or rsi, rsi
cmovz edi, esi
and al, dl
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
xor rax, -1522567562
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
xchg dx, si
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], edi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], cx
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
btc rdx, rsi
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -14
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 100
and rcx, 0b1111111111111 # instrumentation
movzx ax, byte ptr [r14 + rcx]
mov rdi, -7956777892145474940
and rsi, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rsi], 39
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
cmovns rsi, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
