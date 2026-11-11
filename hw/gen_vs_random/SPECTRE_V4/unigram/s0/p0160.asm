.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg si, bx
or dx, 75
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
imul edx, ebx, 1
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
and rdi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb ecx, dword ptr [r14 + rcx]
movzx edx, di
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
and edi, -102
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -126
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
cmp ecx, edx
test dil, dil
and sil, al
sub rax, -1881584175
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], 121
and rdx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdx], 0
and rcx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rcx]
and edi, -102
bt rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], ecx
mov al, al
and rbx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rbx]
movzx ax, cl
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rcx
cmp dil, bl
and cl, -118
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
movzx rax, cx
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 7
cmovnle rdx, rdx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rdi
or rdi, 43
and si, -74
and rcx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rcx]
or di, 0b1000000000000000 # instrumentation
bsf cx, di
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
