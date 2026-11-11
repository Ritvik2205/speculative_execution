.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and eax, 1167476476
add eax, ecx
and rdi, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rdi]
sub bl, 2
and rax, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rax]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rcx]
lea ebx, qword ptr [rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], sil
add al, 65 # instrumentation
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdx]
test esi, 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
