.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rbx]
or si, ax
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
or bl, 67
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 72
and rax, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rax]
movzx ecx, cx
and rdx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdx], 96
and rdx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rbx]
movsx ebx, dx
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
cmovnle cx, ax
movzx rsi, ax
and sil, cl
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
test bl, dil
cmovle ax, dx
bt edx, ebx
mov dl, dil
or esi, ecx
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 29
add bl, -109 # instrumentation
sbb edi, 71
and dl, 4
or al, bl
xor rcx, rbx
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmovl rax, rcx
cmovo rax, rax
and di, 69
sbb edi, 43
and rdi, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], 97
add cl, -75 # instrumentation
adc cl, 84
and edx, 5
and rsi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rsi]
add rax, rdi
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 124
sub esi, 5
and si, 68
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
mov rax, -8696242625349627833
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
