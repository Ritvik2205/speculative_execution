.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -114 # instrumentation
cmovl si, bx
sub cl, -74
add cl, -37 # instrumentation
adc edi, 87
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
cmovs ax, ax
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
mul ax
test dl, 19
bts esi, 241
btc si, di
add al, 118
xor bx, si
btc rax, 54
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
xor bl, 93
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 39
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
or dil, 58
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 71
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
cmp si, cx
or esi, 45
add cl, 26
and rbx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rbx], eax
add al, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
movzx cx, sil
cmovp esi, esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
sbb cl, sil
sub edi, ebx
and rax, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rax]
cmovnp rdx, rdx
test ax, 23760
and rcx, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rcx], 33
add bl, 38 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rax]
or ax, dx
sub bl, 17
bt eax, edx
add dl, cl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
sub eax, edx
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], dl
test di, 12
xor si, 77
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
