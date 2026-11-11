.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], 84
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
cmovp rcx, rsi
xor dil, cl
and esi, ecx
bt rax, 59
test dil, -26
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
imul di
xor cx, bx
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rdx]
cmovnle rcx, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rsi]
and cl, al
mul edx
and rax, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rax], di
mov dil, al
cmovnp ax, cx
and sil, -84
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], dil
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], si
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
mov rcx, rcx
sub cl, dl
imul edi, eax
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], cl
movzx edx, bl
or cl, dil
or eax, ebx
cmovnp ebx, edi
movsx rdx, ax
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], -87
test dl, cl
xchg rbx, rsi
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], 43
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
cmovs esi, edi
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
cmovnl dx, ax
xor rax, rdx
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 76
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
