.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not si
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
btr rdx, 87
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 82
bts rdx, rcx
and rsi, rcx
and rbx, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rbx]
bts rax, 67
and rbx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rbx]
and al, -118
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
mul rbx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
test cl, -119
btc ecx, edx
mov rdi, rcx
cmovo dx, si
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
cmovno ebx, edx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
cmovz edx, edi
movsx dx, cl
add bl, dl
cmp edi, 3
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
or cl, 83
sub rsi, rsi
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
imul di, dx
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
xor eax, edi
adc cx, 50
cmp cl, dl
cmovs esi, edi
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 59
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], si
sub al, dil
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rcx]
test al, -24
xchg rcx, rdx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
