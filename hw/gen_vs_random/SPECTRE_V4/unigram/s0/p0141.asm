.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, sil
sub ecx, ebx
or di, si
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 53
and rax, 67
add al, 56 # instrumentation
cmovle rdi, rax
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
cmovs rax, rcx
xor cl, -85
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 60
add al, bl
sbb cl, 20
sub sil, -50
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], 68
sub cl, -74
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
add rdx, rsi
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
movzx eax, bl
cmovb ebx, ebx
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rsi
add bl, 65 # instrumentation
cmovnp dx, bx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], ecx
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], cx
imul bx, dx
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ebx
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 46
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
cmovo rsi, rax
add dl, 41
sub sil, bl
cmovns edx, eax
imul dx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
imul cl
cmovnbe rdx, rsi
or ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
