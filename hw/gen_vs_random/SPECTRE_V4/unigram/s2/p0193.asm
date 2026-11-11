.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
btc ecx, 233
sub al, dil
cmp ecx, 5
and cl, -118
xor si, -73
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
adc dx, 45
xchg bx, dx
xchg dil, dil
cmovnbe ebx, eax
cmovb ax, cx
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 45
add cl, -6 # instrumentation
cmovo rbx, rax
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
or cx, 23
cmp sil, 127
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 31
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
cmovo esi, eax
add dl, 81 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
and dil, dil
and rcx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
cmovo bx, dx
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 1103421604
and rcx, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rcx]
xchg cl, bl
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
test cl, -52
add dl, dil
cmp ebx, 80
mov edx, esi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], di
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 65
xor dil, -23
cmovl ax, ax
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
adc rbx, 60
xor bl, al
and rsi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rsi]
and bl, al
xor eax, esi
cmovno cx, cx
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
