.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 66
cmovnz edi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
movsx ebx, si
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 69
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 2
test bl, sil
or cl, 64
and rbx, 0b1111111111111 # instrumentation
movzx rax, word ptr [r14 + rbx]
test bx, si
and rsi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rsi], ebx
and bx, 95
sbb dl, -99
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 90
and rax, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rax]
and dl, bl
sbb si, bx
add cl, -37 # instrumentation
adc eax, -39
mov rbx, rdi
sbb al, cl
xor rcx, rbx
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], dx
test rdx, 88
movzx di, dl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
mov bl, 8
test rdx, 67
xor dil, 40
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rax], si
add cl, -42 # instrumentation
adc dl, bl
sbb ax, -26881
xchg rsi, rbx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 46
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
cmp bl, cl
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, -10 # instrumentation
mov dx, 7
xor ebx, edi
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
xchg rsi, rdx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 7
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
cmp bx, 28
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
