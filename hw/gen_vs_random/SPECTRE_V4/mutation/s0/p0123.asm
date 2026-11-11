.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, -6
test rax, rbx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
or rax, -823069511
movzx di, sil
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], -1412107342
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
add ebx, -57
test edx, ebx
adc dl, al
add ax, 6414
cmovz bx, cx
movsx rsi, bl
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 1958762209
cmovnz si, si
xor rax, rbx
and rax, 0b1111111111111 # instrumentation
or cl, -33
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmovnle rax, rdi
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
adc rax, -691707152
inc edx
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], esi
xchg di, di
add eax, -2075159577
mov esi, eax
and rdx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdx]
cmovnp rsi, rax
adc sil, -31
and rbx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
btr ebx, 156
and rdx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdx]
add bl, -38
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
bt ecx, 247
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
