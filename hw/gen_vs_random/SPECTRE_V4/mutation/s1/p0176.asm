.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 87 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
or dl, dl
adc di, -78
sbb eax, edi
or eax, 185586366
add dil, -84
cmp rdx, rbx
movzx rax, di
test sil, 16
neg ecx
or dl, dil
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 6
cmp al, cl
adc ax, dx
cmovb rsi, rax
sbb sil, -11
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
xchg rsi, rax
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
cmp sil, 127
cmovs ecx, esi
xor ax, 30500
xchg ebx, eax
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
xor rsi, rdi
xor eax, -48271836
sbb cl, 45
add dil, -61
sbb rdx, -43
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor al, dl
and rdi, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rdi]
adc ebx, 51
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
