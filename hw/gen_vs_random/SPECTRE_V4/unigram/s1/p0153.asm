.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt ecx, 72
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
xor bl, 93
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 81
and rsi, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rax]
or al, 96
and rsi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 65
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and bx, 95
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rax], esi
cmovnbe rdx, rdx
cmovle edx, ecx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
test ebx, -595096626
add edi, edx
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and sil, -49
adc al, 36
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], 14
add bl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
xchg rbx, rdi
cmovo edx, ebx
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 82
btc si, cx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], dx
btc bx, di
and cx, 17
and rdx, 0b1111111111111 # instrumentation
and dx, word ptr [r14 + rdx]
add al, al
not ax
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
btc ax, di
test ebx, 1263899340
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], 85
xor dl, 73
bt eax, esi
add si, 4
sub rdx, 22
movsx eax, cl
cmovle dx, dx
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
add eax, -1796699558
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
