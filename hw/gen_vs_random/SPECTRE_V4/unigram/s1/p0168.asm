.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp cx, 0
and esi, 2
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
neg cx
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rdx], ax
neg edi
cmovl cx, di
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
or dl, al
cmp rax, 40
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
add cl, 7 # instrumentation
adc dx, 63
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
add eax, esi
btc rbx, rsi
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
adc rax, 310915511
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 40
and rdi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rcx], rdi
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
mov dil, cl
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
add al, al
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
cmp dil, cl
and rbx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rbx], 5
adc dil, al
sbb sil, -11
movzx rbx, bl
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
adc rdi, 89
add ax, 10655
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xor sil, 5
neg ebx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 24
cmp rax, -1070057082
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
