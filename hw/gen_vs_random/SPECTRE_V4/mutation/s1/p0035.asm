.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
bts cx, 135
xor esi, -82
sub bl, -89
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
add cl, -59 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 0
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rsi
and al, -118
neg edx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
xor bl, bl
test dx, cx
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdx]
cmovp rax, rdx
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
cmp rax, -1070057082
test dl, al
and rcx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rcx], 120
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
sub ax, 17434
btc rdx, 178
xor ax, -6064
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, -1772786275
sbb cl, 35
add dil, -61
sbb rdx, 6
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, -5
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
xchg dl, dil
cmovo ebx, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
test al, dl
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
test ecx, eax
btc di, 83
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], 36
sbb edi, 107
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
