.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 2
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dil
xor ax, 15671
cmovnp edx, edx
adc rbx, rdi
and rsi, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btr qword ptr [r14 + rsi], rcx
and rsi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rsi]
cmp al, dl
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 2
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
add al, 32 # instrumentation
adc rax, -324435035
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], -24
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rsi]
sbb bx, 94
and rsi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rsi], ecx
mov eax, -1056201206
adc ax, 15251
cmp dl, al
mov dl, 81
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
add cl, 113 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 3
movsx ebx, dx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdi
and rdi, 0b1111111111111 # instrumentation
adc rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf di, word ptr [r14 + rdi]
xchg ebx, esi
test cl, 78
test bx, 24072
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], -30196
cmovbe rax, rdi
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -108
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], rcx
cmp rbx, rsi
and rdi, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdi]
adc cl, 111
add al, -99
xor rdx, rcx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 7
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 2
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi], -41
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
