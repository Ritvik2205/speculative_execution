.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul rdi
add al, 122 # instrumentation
cmovns edx, ebx
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
mov rbx, 9101099553822202722
cmovno edi, edx
neg bl
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
mov rax, -8696242625349627833
add dl, al
or cl, bl
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
adc eax, -1513455903
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
add cl, -42 # instrumentation
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], ax
cmovz eax, edx
test al, dil
xor ax, 28088
xor al, 29
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdi], cx
or edi, eax
and rsi, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rsi]
cmp bl, al
sub eax, 2030845821
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rcx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rbx]
or ebx, edi
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], sil
cmp dil, bl
or rbx, 81
test rcx, -2118888343
or bx, ax
movzx edx, dil
add dl, 116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
cmp al, dil
sub dl, dl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
test ebx, -595096626
cmovs rbx, rax
and sil, -49
test ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
