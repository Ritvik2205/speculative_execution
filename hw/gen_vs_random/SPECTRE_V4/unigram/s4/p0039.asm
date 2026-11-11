.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
dec edx
not di
or bx, -111
add dl, 31 # instrumentation
cmovnl bx, bx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rcx], eax
or eax, 1802312508
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 73
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
sbb eax, 4
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rdx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdx]
xor dx, si
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
or rcx, rax
movzx cx, dl
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rdx]
not ax
movzx edx, dil
neg eax
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rcx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rcx]
or bl, dl
movzx dx, sil
cmovnb ax, ax
and dl, 30
or edx, esi
and rbx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rbx]
sbb sil, 108
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 69
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 79
and rcx, -102
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
movzx rdx, bl
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rcx]
not edi
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
sub bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
