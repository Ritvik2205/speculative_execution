.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec bl
imul cl
cmovle dx, dx
btr cx, bx
cmovle edx, eax
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movzx bx, byte ptr [r14 + rdi]
cmovnb rax, rdx
cmovnl rcx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
cmovs eax, ecx
xor rsi, -3
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
and rsi, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rsi]
inc rdi
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
bswap ebx
adc bl, 89
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 46
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
adc al, bl
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rbx
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 91
add cl, -82 # instrumentation
sbb ax, dx
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edx
add al, 5
bt eax, edx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
not rbx
bt edi, 41
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle eax, edx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -114
cmp bl, 13
xor dx, 20
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 59
movzx eax, cl
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rdx]
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
