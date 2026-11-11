.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul bx, cx
cmp al, 98
and ax, dx
cmovnp si, cx
cmovz bx, ax
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], edi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rbx
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
xor rcx, rdi
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 95
or bl, -35
add bl, 127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdx]
mov rdx, rax
xor ax, -29507
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
test bl, bl
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
adc cx, 55
and al, 5
sbb rbx, 20
add al, 23 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 59
sub cl, sil
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], sil
cmovnb rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
dec bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 48
cmovs rax, rsi
or edx, -118
cmp esi, 123
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], -95
imul si, cx, 95
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
adc al, -86
xor al, 118
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
xor cl, bl
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 39
xor rcx, 112
or bl, bl
and rdx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdx], 31
xor eax, 167244411
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
