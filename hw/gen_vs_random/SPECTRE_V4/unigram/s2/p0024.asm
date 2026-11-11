.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], ecx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rbx
adc cl, al
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
imul rbx
movsx eax, bx
cmp ax, si
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
adc dl, dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rsi]
add al, cl
mov bl, 52
sbb ax, -19255
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
add ax, -15653
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
cmovp dx, ax
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 120
sub ebx, 40
sbb cl, dl
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
sbb bl, dl
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
cmp al, 81
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
cmp rcx, 52
and rcx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rbx]
cmovnp ax, di
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], eax
bt ebx, 228
or bx, dx
xor ebx, eax
or edx, -127
movzx rdx, si
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 17
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
