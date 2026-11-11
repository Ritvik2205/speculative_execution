.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rax, rcx
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
add bl, -35 # instrumentation
mov al, bl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], -121
mov rdx, rbx
sub dl, dil
btc rdx, rsi
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rcx
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 75
adc al, dil
and rbx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
or dil, al
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], 78
movsx rdi, si
add al, -71 # instrumentation
cmovb rdi, rax
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
sub dl, al
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
sub bl, dil
xchg bl, dl
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
cmovnz rsi, rdi
dec rsi
sbb cl, dl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
cmovb di, bx
add dl, -12 # instrumentation
cmovp esi, edi
and rdi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rdi], edi
and rbx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rbx]
add dil, dl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
mov bl, -69
adc al, -59
or edx, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovp di, di
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 49
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
add dl, 1 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
