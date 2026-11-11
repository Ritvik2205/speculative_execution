.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 17
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rbx]
neg si
cmovz ecx, eax
mov dl, bl
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
cmovnp rbx, rdx
add cl, 101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
cmp cl, 59
and al, 75
and rbx, 0b1111111111111 # instrumentation
add word ptr [r14 + rbx], 78
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
mul bl
xchg rbx, rax
test al, 57
cmovs dx, di
add rax, 1049076260
add bl, -50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rsi]
bts ecx, 0
sbb cl, 12
or rsi, 73
and rsi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rsi]
mov bl, dil
not rbx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], -87
and bl, sil
and rax, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rax], 74
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
cmp rax, 1682181214
add al, al
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmp rbx, qword ptr [r14 + rbx]
or di, cx
and rdx, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], -56
sub bl, bl
cmovle di, cx
and rdx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], 101
add bl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
