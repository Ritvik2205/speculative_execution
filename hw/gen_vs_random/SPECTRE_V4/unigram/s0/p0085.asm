.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ecx
cmovp rcx, rdi
xchg ax, ax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], dx
and rax, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], ecx
not ax
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -115
cmovno ebx, ecx
xchg rsi, rdx
sub rdi, -34
sbb ecx, 45
xchg dil, dil
or rsi, rbx
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], rcx
sub rsi, -48
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 79
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 89
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
cmovnle edx, ecx
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 3
bt ebx, 31
cmp ebx, ebx
imul ebx, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 59
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], 75
movzx cx, dil
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax], 96
add al, -109 # instrumentation
cmovns si, bx
mov dil, dl
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmovnb si, ax
sub rdx, rcx
and dx, -107
mul rdx
xor bl, al
add cl, -57 # instrumentation
cmovno rcx, rbx
and rax, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rax]
btr cx, ax
not bl
bt bx, ax
and rdx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdx]
cmp edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
