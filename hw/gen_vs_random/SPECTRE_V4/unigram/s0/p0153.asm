.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
cmovnbe ebx, ebx
xor bx, 106
mov al, cl
cmp al, bl
and rdi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rdi], rsi
test cl, -31
or edi, -78
imul sil
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and cl, -118
cmovnb di, dx
and edx, ebx
cmovnp dx, si
and rax, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rax]
sbb bl, dl
movzx esi, cx
test sil, cl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dl
cmovle si, bx
sbb edx, 16
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
add bl, -99 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
xor bl, cl
cmp ecx, 35
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
cmovnb rax, rbx
add dl, 59 # instrumentation
cmovno rax, rdi
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
not al
and rsi, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
mov cl, cl
cmovnbe rdx, rsi
cmp edx, edi
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
add al, -44
and rdx, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rdx]
dec bl
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], -65
sub bl, dl
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
