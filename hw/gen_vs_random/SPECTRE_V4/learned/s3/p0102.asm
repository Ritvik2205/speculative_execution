.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 22
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
cmovnp di, ax
movzx rsi, bl
sub al, dil
add eax, edx
and rcx, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], di
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 37
or dl, dl
cmp dil, dl
cmovp edi, eax
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
add dl, dl
and rdi, -2
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rbx]
mov rbx, 9101099553822202722
and rcx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rcx]
mov rdx, rsi
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rcx
sub cl, dil
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
sbb rax, 183833426
and rax, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 4
xor cl, bl
test bl, bl
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
adc al, dl
and rdx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rdx]
and si, 68
cmovz esi, edx
imul rdi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
mov dil, -118
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
