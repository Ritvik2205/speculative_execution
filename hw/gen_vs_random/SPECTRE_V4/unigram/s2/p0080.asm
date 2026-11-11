.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc eax
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 40
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], cl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edx
imul cl
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 92
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
sub ax, 24441
test edi, -1249897727
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
add cl, 110 # instrumentation
movsx dx, cl
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
add rdx, 34
add cl, 8 # instrumentation
adc dl, al
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle esi, eax
and rdi, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdi]
add di, -74
and rax, 0b1111111111111 # instrumentation
adc cx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], 75
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], ax
dec rax
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], bx
adc edi, 11
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle edx, esi
add bl, 65 # instrumentation
cmovnp bx, dx
test rdi, -1876639003
cmovnb bx, bx
add dil, dil
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 52
cmovnp bx, ax
cmovnbe rsi, rax
mov dil, -118
mov rcx, 4219775168754920203
and rdx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdx]
add ax, -13169
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
neg di
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 71
and rax, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xchg rcx, rdx
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
