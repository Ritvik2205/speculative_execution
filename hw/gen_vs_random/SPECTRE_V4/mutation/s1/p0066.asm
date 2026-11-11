.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, -30
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, -48
test rax, -405021090
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, -93
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, -18179
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xchg di, di
add eax, 544045319
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
adc sil, -31
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr ebx, 87
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
add bl, -59
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 37
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
test al, bl
and rbx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
cmp dl, dil
sub cl, dl
cmp dl, al
xor al, bl
sbb dl, cl
bt ecx, 177
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
