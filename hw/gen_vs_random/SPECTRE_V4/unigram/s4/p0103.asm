.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test ecx, 87
add dx, -90
cmovnb edi, eax
cmp rax, -1102558854
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 19
and rdx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdx], 57
cmovp ecx, edx
and rdx, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, eax
cmp bl, dl
dec edx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 50
movzx edi, dil
and rax, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rax], 37
and rax, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 86
sbb ecx, 86
sub al, 119
and rax, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rax]
add dil, -10 # instrumentation
cmovnbe edi, eax
cmovp bx, ax
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -25
bts rbx, 24
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
or cx, 30
add dl, 41
movzx edi, cl
cmovnp ecx, ecx
mov cl, cl
bt eax, ecx
cmovp esi, esi
imul edx, eax, 47
btr cx, ax
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or dl, al
bt ebx, eax
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmovnb eax, edi
add dx, -90
sub edx, 2
movzx rax, dx
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 64
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
not si
sub ebx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
