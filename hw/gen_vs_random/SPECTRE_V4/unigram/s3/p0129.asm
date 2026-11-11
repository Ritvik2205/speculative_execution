.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rcx], 83
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 121
cmp al, bl
xor rsi, -3
or dil, 5
bts rcx, 33
sbb ecx, esi
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rcx], eax
cmp cl, -105
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], 113
xor bx, 106
not al
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 40
cmovnp edx, eax
cmp cl, bl
add al, -72 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rax]
or eax, -646827727
sub dil, sil
add al, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
adc rax, -827748523
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ebx
sub cl, dl
movzx edi, bx
or dx, 0b1000000000000000 # instrumentation
bsr dx, dx
btc di, 83
and rdi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rdx]
adc sil, bl
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
inc dil
and rdi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdi], ax
sub bl, al
sub cl, al
cmp edi, 3
and rsi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rsi]
dec dil
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
sub rdi, 105
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], bl
bt cx, 31
add rdi, rcx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
