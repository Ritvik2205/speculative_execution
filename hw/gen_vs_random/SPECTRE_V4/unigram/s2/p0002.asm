.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dil, dl
cmp cl, 86
cmovle rdi, rdx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
imul esi, edi
and rdx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rbx
adc ebx, 117
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 2
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rbx
movsx eax, bx
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
imul ecx, ebx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 91
sub edi, 95
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
sbb ecx, eax
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
cmovle rdx, rbx
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], di
cmovnp rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdx], edi
and rdx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rdx]
test bl, 0
cmovnbe eax, ecx
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 82
xor rax, rcx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 68
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], bx
and cl, al
and bl, 26
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdi]
cmp rdi, 66
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
mul ax
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
cmovle edx, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
