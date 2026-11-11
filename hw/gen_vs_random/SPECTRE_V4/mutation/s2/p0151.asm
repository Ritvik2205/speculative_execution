.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 28 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], di
cmovbe si, si
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
sbb esi, ecx
or al, dl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
imul rax, rsi
mul rcx
add dl, -75 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
xchg rdi, rax
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], bl
sub al, 26
mov rsi, 4368505613814921305
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rdx], si
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rsi]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
imul ebx, ebx
adc cl, bl
cmovz si, si
cmovb rcx, rsi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], -87
and rbx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], cx
and cl, al
cmp dx, -67
or bx, 0b1000000000000000 # instrumentation
bsr dx, bx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], rax
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
or dl, al
add eax, 544045319
cmp cx, ax
cmp al, -122
sub dil, 35
mov ecx, edx
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], di
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 127
neg dl
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
cmovb bx, cx
and rax, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
