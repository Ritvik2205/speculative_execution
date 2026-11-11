.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, dl
and rcx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rcx]
add al, dil
and rbx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rbx], 91
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 30
sbb cl, 19
and rax, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 73
xor cl, -54
xor bl, cl
xor dl, 86
and bl, sil
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rcx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
dec rbx
adc bx, -89
add al, 122 # instrumentation
and rdx, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rdx], eax
cmovnp dx, dx
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
or dx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
xchg esi, edi
test ecx, 75
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
cmovz ecx, eax
and rdx, 40
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
sbb eax, 1081973675
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmovno eax, edi
or ebx, ecx
sbb di, -76
test rbx, 59
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
test ecx, 47
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], ax
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 100
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 5
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rdx, qword ptr [r14 + rdx]
xor dl, 81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
