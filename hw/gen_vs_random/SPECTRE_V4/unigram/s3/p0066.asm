.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
bswap edx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
sub esi, 32
movzx eax, ax
cmovz cx, cx
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
dec edx
cmp dil, sil
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rax
imul rcx, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rbx]
xchg eax, ebx
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 97
sbb sil, cl
cmovnle edi, eax
and rcx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rcx]
sbb edx, 15
movzx rdx, cx
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], dl
mov sil, sil
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 67
adc dl, dl
sub bl, al
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], di
imul cl
movzx bx, cl
cmp si, 69
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], cx
bts dx, 40
add sil, 110
add edx, eax
test dil, dil
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rcx, 0b1111111111111 # instrumentation
cmovbe dx, word ptr [r14 + rcx]
imul bl
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
cmovnbe dx, di
neg bx
and dil, al
cmovnp rdx, rsi
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
bt esi, eax
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], sil
cmovnb ecx, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
