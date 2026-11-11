.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -16
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rdi
or si, 0b1000000000000000 # instrumentation
bsr di, si
xchg si, dx
add dl, 12 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rax]
adc esi, 90
sbb al, 123
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 3
btc cx, bx
or sil, cl
lea di, qword ptr [rdx + rsi + 33]
nop
movsx ax, dil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
add cl, al
mul al
and rcx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], ax
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -64
adc al, 36
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], -70
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 66
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 6
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
inc sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rdx
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rcx], rax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rcx]
adc rsi, 68
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], 3
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
mov rax, -8696242625349627833
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
cmovle rbx, rsi
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
inc esi
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdx]
test di, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
