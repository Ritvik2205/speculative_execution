.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, bl
cmovnp rax, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
add rsi, rcx
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rbx]
sbb bl, -94
add dl, 116 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
or al, dl
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 65
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 35
cmp dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rdx]
cmovnp rax, rbx
and rcx, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdx]
xor ecx, edx
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
sub eax, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 8
or dil, sil
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
test esi, 97
test cl, -89
sbb al, al
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
mov edx, eax
bts rax, 157
imul rsi, rax
and rcx, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rcx]
xchg esi, edx
or bx, -111
inc ecx
and rbx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rbx]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
add dx, -90
bt ecx, edx
adc al, sil
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], eax
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], 94
cmp ax, -906
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
