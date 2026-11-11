.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 40
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 2
mov rbx, 44
sbb rcx, rsi
sbb eax, ebx
and rsi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rsi]
mov dl, -124
and rdx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdx], ebx
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
cmovb rdx, rdx
btc eax, esi
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
sbb dx, 2
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor rsi, rdx
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rsi]
movzx edi, di
test dl, al
xor al, -84
and rsi, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rdx
movzx di, sil
neg si
and rbx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rbx]
and dil, -23
sub bl, dl
sbb eax, edi
bt eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
add bl, -99 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], di
cmovs eax, edx
or sil, dil
imul di, dx
and bl, -30
btr dx, dx
add dl, 87 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
not cl
bt ebx, 74
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 11
cmovnbe rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
imul rcx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
