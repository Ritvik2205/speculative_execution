.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], bl
bt rax, rax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 49
cmovz eax, ebx
bt ebx, edi
mov dl, dl
mul dl
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], esi
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
cmovnl dx, di
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rax], dx
sbb ax, 7207
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rsi
or ecx, 17
and rbx, 0b1111111111111 # instrumentation
movsx eax, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
cmovs edi, edx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
add al, dil
bts ebx, 197
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
sbb dl, -71
cmovnz dx, di
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
bt ax, 248
and bl, bl
and al, dil
bt rdi, 92
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
bt si, 18
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 38
test sil, -119
sbb bl, bl
add al, -4
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
cmovnb rdx, rax
cmovl bx, si
sub edx, 73
xchg rbx, rsi
not rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
