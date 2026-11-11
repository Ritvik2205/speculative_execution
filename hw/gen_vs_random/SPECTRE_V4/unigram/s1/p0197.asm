.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
imul edx, eax, 63
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
cmovnp di, si
test di, -19523
imul edx, eax, 46
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
imul ebx, edi
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], -77
or al, al
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
add dil, -84
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
and eax, edx
and rdx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdx], bx
xchg eax, esi
test sil, 16
add al, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
bts edx, 116
add al, 89 # instrumentation
cmovnle ax, cx
xor cl, -73
sub al, al
and rdi, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rdx]
sub bx, 24
btc rbx, 52
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
sub cl, cl
or dx, 22
and bl, -119
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 71
xor sil, cl
add al, -71 # instrumentation
cmovb rsi, rdi
test dl, 24
neg ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], -99
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
mul rbx
and rsi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
