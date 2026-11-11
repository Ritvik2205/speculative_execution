.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], -16
cmovnl cx, ax
or bl, dil
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
imul dl
cmp al, -1
sbb dl, 75
movzx rdi, dil
and rbx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 39
neg ebx
cmp rcx, -121
add bl, bl
adc dl, al
movsx rdx, ax
adc rax, rbx
sbb cl, bl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
mul cx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ecx
imul rsi, rcx
add dl, -82
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and ecx, 71
cmovl di, di
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
add dl, -8
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
adc rbx, 60
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], eax
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], ax
or cl, dil
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rax]
and bl, al
movsx eax, dx
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb dx, word ptr [r14 + rcx]
sbb dl, -71
sub rax, rbx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], -25929
cmovnb ax, di
or cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
