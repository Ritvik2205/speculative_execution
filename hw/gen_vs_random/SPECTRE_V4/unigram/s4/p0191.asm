.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 54
add cx, 95
and rdx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdx], 85
test bl, bl
adc bl, sil
inc ebx
cmp cl, cl
not ebx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 84
add rbx, rsi
sbb dil, al
add dl, 41
movzx esi, dil
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rdx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdx], 11
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
movzx di, dl
and rcx, 0b1111111111111 # instrumentation
cmp rcx, qword ptr [r14 + rcx]
btc rax, 13
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
cmovnl rsi, rsi
cmovo eax, edi
cmovb ecx, edi
imul rdi
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 62
sbb cx, 68
test dil, dil
and rcx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rcx]
xor dl, dil
imul edx, esi, 6
add rdi, -94
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rax]
bt edx, 68
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rsi
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
dec rdi
sub cl, dil
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
add cl, -10 # instrumentation
cmovnbe ecx, eax
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
cmovnp cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
