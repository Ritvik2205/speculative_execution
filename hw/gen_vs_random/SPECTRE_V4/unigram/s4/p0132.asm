.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rcx
add al, -117 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], edx
or al, dl
add al, 122 # instrumentation
cmovns ecx, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
sub dl, bl
bswap edx
bts edx, 69
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 21
add si, 4
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
add dl, cl
xor dl, al
sbb edi, 59
add cl, -21 # instrumentation
adc rbx, 6
or si, bx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
adc al, dl
test cx, 74
cmovb ax, ax
cmovnle ecx, edx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add bl, 63 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rcx]
test dil, sil
or al, dl
test dx, ax
cmovnb rdx, rsi
add rsi, 39
and rbx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rbx]
test dil, dl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
bts edx, edx
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], esi
and dl, 47
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
cmovz rbx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdx]
xchg dl, dl
mov al, 94
imul sil
add dil, 16
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
