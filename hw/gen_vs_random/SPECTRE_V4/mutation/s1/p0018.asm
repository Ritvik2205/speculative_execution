.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 65
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], 49
and rsi, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -23
cmovo ax, ax
sub eax, -529389957
and rdx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdx]
cmp rdx, rcx
cmovnbe rbx, rsi
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
add cl, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
add al, -44
and rax, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], 75
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edx
bt bx, di
or esi, 32
and eax, -1555813586
imul edx, ebx, 1
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
and rsi, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rbx
xor ax, 20236
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, 365940537
sbb cl, 12
add dil, -84
sbb rdx, 6
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, -55
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
sbb edi, -94
cmovs rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
