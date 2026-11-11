.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 95 # instrumentation
cmovns rdx, rdx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
xor al, al
bt ebx, edx
bt ax, 171
test dil, -67
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], si
and al, bl
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or dl, -18
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 5
or sil, bl
xor eax, 73
and dil, dil
and rsi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 66
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
mul edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
xor ax, 2053
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
imul rdi, rcx, 14
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
sub ecx, ebx
and rbx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 59
mov bx, 68
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 6
lea edi, qword ptr [rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dil
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], -26
test al, -59
cmovnl rax, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
