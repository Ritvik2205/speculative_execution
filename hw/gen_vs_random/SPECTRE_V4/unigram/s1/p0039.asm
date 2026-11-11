.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovo ebx, edi
xchg rsi, rbx
cmp bl, -79
xor di, 40
add dl, -55 # instrumentation
cmovnbe ebx, eax
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rbx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], bl
cmovno eax, edx
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
mul rcx
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
neg edx
xchg rsi, rdx
or si, 85
add edx, 89
test bx, 24072
bt di, bx
adc esi, 78
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
adc bl, sil
or rcx, 50
and rsi, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rsi]
or al, -83
or dx, 43
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 22
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], cl
sbb al, cl
and cl, -118
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], ax
add cl, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rsi]
xor dx, dx
imul dl
and dl, -11
not cx
cmovno rsi, rax
and al, bl
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 75
and eax, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rdx]
cmovnle esi, ebx
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
