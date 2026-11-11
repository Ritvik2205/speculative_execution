.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rdx, rcx
xchg edx, ebx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
add cl, -37 # instrumentation
adc esi, 63
test dl, dil
and rdx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], 94
add sil, 26
inc ecx
and dl, dil
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rdx
sbb rdi, 42
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
test ax, -5170
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
cmp dl, 71
and rdx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdx], 67
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
add sil, 110 # instrumentation
movsx dx, sil
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
xor ax, si
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
and bx, word ptr [r14 + rbx]
mul rbx
xchg rbx, rcx
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
and cl, dl
and rsi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 62
and rax, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
cmovnb edx, esi
and eax, -37
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
add al, 97 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 7
cmovnz eax, ecx
or cl, 58
cmovnp rcx, rsi
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], 71
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
