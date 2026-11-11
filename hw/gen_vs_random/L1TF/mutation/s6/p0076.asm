.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movzx eax, bl
test ax, di
test rbx, rcx
sets dl
xor rdx, 122
and rbx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
and rax, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
add dl, 37 # instrumentation
cmovbe di, si
and rdi, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
movsx edi, sil
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx], -76
sub si, -105
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], al
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
