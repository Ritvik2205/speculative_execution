.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, cl
xor rax, -98
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rcx], si
and rsi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rsi]
and dil, sil
btc rsi, 36
movsx edi, bl
movsx dx, bl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
sub rsi, -48
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 43
not al
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 12
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rax]
test bl, -29
cmovnbe rbx, rax
cmovno rdi, rsi
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 62
adc dl, 61
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
or sil, -47
and rdi, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], esi
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rbx]
xor bl, dil
cmp dx, 58
test al, -85
and cx, dx
sbb sil, cl
add bl, 71 # instrumentation
adc di, dx
adc cl, sil
movzx dx, dil
and rdx, 0b1111111111111 # instrumentation
movzx ecx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], rdi
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
cmovl edx, ebx
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdi]
add dl, -79 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
test sil, 16
cmovle bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
