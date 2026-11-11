.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 98
neg ecx
add esi, ebx
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rdi
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], -97
or dl, bl
movsx ecx, cx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
cmovs eax, ebx
imul ebx, eax, -112
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], di
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 4
mul rbx
and rax, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rax]
and ebx, -122
btc eax, 62
or rdi, -41
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], al
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 97
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
bt rbx, rbx
and rcx, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], dl
sbb ebx, ecx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
sbb bl, -79
cmp bl, sil
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], -3291
xchg rbx, rcx
neg rsi
test rcx, rsi
imul rdx, rdx
and rdx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 33
and rcx, 0b1111111111111 # instrumentation
test rcx, rdi
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
bt word ptr [r14 + rcx], dx
cmovs edx, edi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 75
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
movzx rdi, bx
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rbx]
adc rsi, 82
and rbx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rbx]
btc edi, 125
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
