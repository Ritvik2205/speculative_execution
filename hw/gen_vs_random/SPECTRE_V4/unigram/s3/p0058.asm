.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], ecx
movzx ecx, ax
dec cl
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], cx
xor bl, 126
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], -101
and ax, cx
and rdx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rdx]
cmovno edx, edi
cmovnb cx, si
or edi, eax
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 25202
cmovl rdi, rdx
add dl, -10 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 103
and rdx, 0b1111111111111 # instrumentation
cmovnz di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ebx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rbx, 4
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], 98
and dil, -120
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], -112
sub ecx, -107
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], eax
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, esi
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 94
sbb al, cl
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
cmovbe bx, dx
and rsi, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rsi]
adc al, -59
cmovle rsi, rcx
or dil, sil
and rbx, 94
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 9
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
imul sil
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
xor rax, 1049851782
or ax, si
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
sub cx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
