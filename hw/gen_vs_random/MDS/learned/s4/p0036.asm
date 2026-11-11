.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, 13
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 116
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], -16
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
cmovle edi, ebx
cmp al, al
jmp .bb_0.1
.bb_0.1:
add dx, ax
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
and rsi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rsi], bx
and bl, 52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
xor dl, cl
or ax, -4635
btc rdx, 138
imul rsi
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
add dl, -26 # instrumentation
btr edx, 63
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
xchg cx, dx
cmp ax, 51
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, esi
add dil, 2
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
cmovnb esi, edi
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
or ax, -4635
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
sbb ecx, 74
add al, -75 # instrumentation
adc al, 72
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 11
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 30
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmp ax, 8
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], 30
and rdx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdx], 14
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rcx]
cmovnp rbx, rdx
inc edx
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
not di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
