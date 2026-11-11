.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dx, 60
and rcx, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
test eax, 1561062795
adc esi, 90
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovp di, si
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], dx
xor edx, ecx
xor eax, ebx
cmp eax, -92285311
bt esi, 227
sub dl, dl
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
dec si
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 23
neg sil
add dl, 41
or esi, edx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], eax
imul ecx, edi, 45
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], cx
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
sbb dil, sil
cmovle rcx, rdx
cmovnp rax, rbx
bt edi, 15
sub dil, -10
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rax
and rax, 0b1111111111111 # instrumentation
imul rsi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
add al, -102 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
inc ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
cmp esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdi]
and rcx, -102
and rbx, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rbx]
cmovs rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 24
imul rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
