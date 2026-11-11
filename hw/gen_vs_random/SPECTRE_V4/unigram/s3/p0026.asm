.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edi, -1249897727
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], dx
cmp bl, 13
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
sbb cl, al
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rdi
and cl, dil
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rdi
and rax, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rax]
cmovnp rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
cmovnb edi, eax
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 5
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
sub bl, dl
cmovns cx, di
test edi, -1249897727
btc rsi, rcx
adc rdi, rax
movzx rdx, cx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
cmovle edi, edx
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
sub dil, al
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
imul dx, si
test bl, 0
imul dx
and al, bl
add cl, 20
and rbx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
cmovp di, ax
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rax
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 98
cmovs rsi, rdi
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], dx
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], 85
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
adc dl, 10
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
