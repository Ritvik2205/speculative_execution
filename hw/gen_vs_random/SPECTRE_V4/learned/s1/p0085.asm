.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], sil
or si, 0b1000000000000000 # instrumentation
bsr di, si
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
mov dl, dl
cmovnp rdx, rcx
inc cl
xor bx, 97
add rdx, rsi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], 78
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 76
add al, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
sub al, bl
or si, 84
mov al, 44
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], 439393806
and dl, 91 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rax]
adc eax, -1513455903
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], cl
cmovle ax, ax
and al, dl
and rax, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
cmovnbe rax, rdx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 71
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 87
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
test bl, bl
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
