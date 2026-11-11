.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], rax
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
imul rdx, rsi, 19
or ecx, ebx
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 82
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rdi
test bl, 0
cmovns si, di
xchg bl, dl
or dx, 53
and bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 82
sub al, bl
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdx]
cmovs ebx, eax
add dl, -99 # instrumentation
not ebx
cmovnp ax, ax
cmovo ax, bx
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
xor bl, 93
test di, 30
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdx]
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb rcx, 18
adc cx, 15
and esi, 55
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 92
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 34
neg esi
btc esi, 72
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], di
mul esi
test sil, 25
sub bl, bl
cmovnle eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, ebx
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edi
cmovnbe rdx, rdi
cmovnbe rsi, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
