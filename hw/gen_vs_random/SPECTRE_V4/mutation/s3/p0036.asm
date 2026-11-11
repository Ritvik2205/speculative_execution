.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -37 # instrumentation
adc eax, -39
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 7
sbb dl, bl
sub eax, 2030845821
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
inc esi
test dl, dl
cmovs ebx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], 108
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
bt eax, 84
sub ax, si
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi]
add dl, 31 # instrumentation
cmovnl cx, cx
cmp al, 114
cmp al, 19
movzx eax, ax
cmovnl si, ax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 48
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
mov rsi, rbx
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
test eax, 1561062795
bts rax, 157
cmovnb esi, edi
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, -101
sub dl, 43
and eax, -37
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -14
add ebx, ecx
bt edi, ebx
mov cl, cl
test eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
sbb cl, cl
add dl, 41
sub al, 50
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rcx
cmovle rax, rbx
cmovb di, di
bts rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
