.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, 17
neg ebx
add dl, 72 # instrumentation
cmovle dx, ax
or al, al
sbb esi, edx
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rax]
btc rcx, rsi
test eax, 1561062795
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
test eax, -558243208
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
add al, sil
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
cmovo edi, esi
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], edx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 86
sub rdi, 45
and rax, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rax], dx
cmp rsi, 40
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rcx]
test ax, cx
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], 99
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
sbb dl, al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
or al, cl
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
add al, 122 # instrumentation
cmovns esi, ecx
dec rax
cmovnl rcx, rcx
cmovl rdi, rdx
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
cmovnz di, bx
cmovp rdi, rbx
add al, -117 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rsi]
add dil, 82
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
movzx rax, sil
add al, 72 # instrumentation
cmovle ax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
