.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 2007177863
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], dx
add al, -117 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
imul dx, si
bts esi, 241
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
mul rbx
and rsi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rsi]
sub dil, dil
and rdx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdx]
and rbx, 110
sbb dl, -99
and rsi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rsi]
sub dil, -10
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
dec edi
and bl, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], cx
add bl, 65 # instrumentation
cmovnp ax, di
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, esi
not dil
cmp dl, dl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
dec rdi
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
sub al, 99
mul rbx
dec rdx
mov bl, 78
test di, 86
test esi, 19
test dil, 8
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 76
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rdi]
cmp al, 114
bts rax, rbx
imul rdi
imul dx, si
and rdi, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rdi]
add bl, -109 # instrumentation
sbb ebx, 30
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], -69
sub al, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
