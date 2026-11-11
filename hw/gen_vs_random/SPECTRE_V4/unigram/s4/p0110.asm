.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdx, rcx
xchg cl, cl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], -17
xor rsi, rax
mul rbx
mul dil
and rax, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rax]
or al, al
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rsi
sub cl, 18
add ebx, -57
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 38
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
test ecx, ebx
movsx ax, bl
imul ecx, eax
dec cl
add dl, -75 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 32
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 16205
sbb sil, -11
cmp eax, 512128713
and ecx, esi
add dl, 1 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
adc cx, 51
cmovl ax, di
sub sil, 71
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 27
add dl, 59 # instrumentation
cmovno rcx, rbx
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
sub dl, sil
movsx ax, dl
bts esi, 18
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], esi
adc edx, -86
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rax
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rax], bx
cmovnb rsi, rdx
neg dil
cmp al, bl
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 8
xor cl, -101
cmovnz rbx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
