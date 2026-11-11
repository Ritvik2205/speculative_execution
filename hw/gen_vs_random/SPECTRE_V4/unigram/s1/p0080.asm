.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
add sil, 97 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 83
xor dx, 54
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 82
or cl, 42
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 87
btc dx, bx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
cmovle rdi, rax
xor esi, ecx
and rbx, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
cmovnbe ax, bx
cmovz ax, ax
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
movzx cx, sil
and rsi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rsi]
test bl, bl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
add sil, -10 # instrumentation
cmovnbe esi, edx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 93
and rbx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rbx]
mov ebx, edx
and rdi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdi]
add sil, 110
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], si
add al, 5
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
not dx
test al, 80
mul cl
not dx
cmovnz edi, eax
bts ecx, 58
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 121
and dl, sil
test di, 73
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf esi, eax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
