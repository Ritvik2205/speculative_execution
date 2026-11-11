.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rsi, rdx
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], cx
mul bl
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rbx
sub si, bx
bt rbx, 33
and rdi, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmovbe dx, dx
cmovnl cx, cx
imul edx, esi, 52
and dil, 8
movsx rax, si
test al, bl
and dl, dl
and rsi, 0
cmp al, al
or ecx, edi
not rdx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], sil
and rax, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdx]
add al, al
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and bl, al
and rdx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rax]
sbb cl, -69
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], cl
mov sil, al
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
sub dl, al
or ecx, esi
cmovno rdi, rax
test ax, si
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], ecx
movsx edi, ax
and al, -87
or eax, 1001462340
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
add sil, -40 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rbx]
cmovb cx, si
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
