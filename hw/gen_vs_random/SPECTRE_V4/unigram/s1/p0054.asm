.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, cl
or cl, -104
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
cmp rbx, rbx
and rdx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rdx], -50
btr dx, di
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 93
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
movzx ax, dil
mov dx, 22195
adc bl, al
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 93
and edx, 50
xor rax, rdi
adc al, al
xor al, -6
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
test cl, 78
cmovnz dx, ax
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 6
and dil, -23
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 120
cmp bl, -16
sub ebx, 44
add esi, ebx
cmovnl ax, bx
and al, 75
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
add dl, 81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdi]
imul ax, dx, 52
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 33
mov dl, cl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], cx
add al, -71 # instrumentation
cmovb rbx, rax
adc sil, -31
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx], 45
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
bt bx, di
add cl, 28 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
cmp al, -122
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
