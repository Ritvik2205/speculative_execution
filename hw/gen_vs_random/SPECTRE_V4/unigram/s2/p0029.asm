.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
cmp dil, 53
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
adc cl, -85
add al, -17 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
sbb eax, 40509622
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 3
movzx rdx, si
or ecx, 17
xchg cl, dil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rcx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rcx]
add di, di
add al, -79 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rdi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], -96
cmovnz rdi, rdi
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 17
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
neg edx
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 4
mov dil, bl
and rsi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rdi], -34
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
btr rdi, 61
sbb dil, bl
and rdx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
bts eax, esi
add cl, 7 # instrumentation
adc cx, 71
and rdi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
bt edx, edi
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 64
add bl, 71 # instrumentation
cmovnle rcx, rbx
add ecx, 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
