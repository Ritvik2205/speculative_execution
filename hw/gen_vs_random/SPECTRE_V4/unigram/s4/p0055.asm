.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], esi
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
and rbx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rbx]
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdi]
movzx ax, al
sbb al, al
test ecx, 49
mov al, al
cmp rsi, 78
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 43
mul rbx
add dl, al
mov cl, 51
cmovz ebx, ebx
and rdi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rdi], dx
imul bl
test al, al
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
cmovnp rax, rsi
test rsi, 21
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], 15
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rdx]
test rdx, 68
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
bts ax, 23
or cx, si
cmovnbe rdi, rax
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
sbb bl, sil
cmovnle cx, bx
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
add cl, cl
or ecx, 62
cmovb rsi, rdi
and rax, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], dx
xor dl, bl
add ax, -15653
and rsi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
