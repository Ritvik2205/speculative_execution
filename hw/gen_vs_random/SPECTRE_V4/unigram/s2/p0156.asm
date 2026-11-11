.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or cl, cl
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], 80
neg rdx
cmovnbe cx, ax
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
add esi, 62
cmp cl, 59
not bx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
add esi, 1
cmovo ebx, ecx
xor dl, dil
not rdi
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 38
cmovb ax, dx
xor si, -73
bt eax, 103
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], -68
and dx, bx
add sil, cl
inc bl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 120
sub eax, ecx
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
movsx bx, dl
or ax, 1 # instrumentation
and dx, ax # instrumentation
shr dx, 1 # instrumentation
div ax
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
sbb dl, 75
cmovp edx, ecx
cmovnz rbx, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
movsx ecx, dl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], 93
and rdi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
add al, 17 # instrumentation
cmovnle esi, eax
mov sil, 30
sbb dl, sil
cmovbe rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
