.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cl
and rcx, 0b1111111111111 # instrumentation
movzx cx, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], dx
not si
mov esi, 92
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 53
cmovnz edx, ecx
and rdi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 62
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
add dl, 100 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
or ebx, 8
adc ax, 96
and rdx, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sub ecx, eax
cmovnbe rbx, rsi
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rdx
cmovb ax, ax
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 96
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 95
cmovnz ax, si
or edx, -127
btc cx, 240
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], cl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 66
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
mov edx, ecx
cmp rbx, 43
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
adc cl, 8
cmp sil, 88
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
dec rbx
cmovnbe rdx, rdx
or al, sil
add rdx, rdi
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], ecx
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rsi
xor sil, 56
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
test bl, al
dec bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
