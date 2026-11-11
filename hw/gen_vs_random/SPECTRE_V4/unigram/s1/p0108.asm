.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 16
mov dil, cl
and rdi, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rbx
and rsi, 0b1111111111111 # instrumentation
add edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
xor al, -113
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
xchg dl, dl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 53
movzx esi, bx
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], rsi
and rdi, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdi]
or al, -88
sub al, cl
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
mov rdx, rsi
add dl, -79 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rcx]
cmovnle di, di
mov ecx, -405458789
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
btc ebx, edx
add dl, 59 # instrumentation
cmovno rax, rbx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
movsx ax, bl
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 41
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp sil, byte ptr [r14 + rbx]
cmovnz cx, di
and dil, sil
imul rdi, rdi, 64
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
movzx edx, si
sub sil, cl
sub dx, -12
and rbx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rbx], sil
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
adc dl, 93
mov cl, al
sbb si, 38
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
