.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sbb al, -101
movzx dx, dl
xor rdi, rdx
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], edi
movsx rsi, bl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], dx
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
cmovnb ecx, eax
xor al, 56
neg sil
add dl, -126 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdi]
mov edx, edi
or rdx, rdi
and rdi, 0b1111111111111 # instrumentation
sub edi, dword ptr [r14 + rdi]
sub esi, ebx
add bl, bl
and rax, 0b1111111111111 # instrumentation
cmovns ax, word ptr [r14 + rax]
or edi, esi
cmovno cx, bx
cmovnb rdx, rax
sbb bl, -94
and cx, 17
cmovnbe rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdx
imul rax, rbx, 27
mul cl
and rdi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdi]
xchg edx, eax
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
movzx edx, dil
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 5
mul rbx
and rcx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rcx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
add rcx, rsi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], dx
imul dx, ax
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
bts rsi, rsi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
mul rbx
add eax, -1796699558
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
