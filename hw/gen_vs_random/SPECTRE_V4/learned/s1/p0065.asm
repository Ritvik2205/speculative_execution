.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
add eax, esi
add edi, 11
sbb eax, -984782068
cmp al, 81
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 6
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
dec rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add dl, 100 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rcx]
dec edi
movzx rax, sil
dec cx
cmovp edx, edx
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovl di, word ptr [r14 + rdx]
mul esi
bts rbx, 74
cmp al, 19
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 20
btr rdx, 71
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
sub rbx, rdx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rdi
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
lea edi, qword ptr [rax + rsi + 99]
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
cmovnbe rax, rsi
test bl, al
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 98
add sil, 110
xchg edi, ebx
cmp al, bl
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 10
adc bl, 89
cmp dil, al
test rcx, -2118888343
adc al, bl
mov rax, -8696242625349627833
sbb al, sil
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rax]
lea edi, qword ptr [rax]
xor dil, cl
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
xor eax, 181978569
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add bl, 38 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
