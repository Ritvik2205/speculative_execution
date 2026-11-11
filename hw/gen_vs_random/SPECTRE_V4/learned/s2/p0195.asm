.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 122 # instrumentation
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rbx]
btr rsi, rbx
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 46
cmp dil, dl
and rsi, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
sbb cl, dl
xor eax, -164167056
add dl, 31 # instrumentation
cmovnl cx, cx
cmovnp ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rax]
cmovnl si, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], dl
and rbx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rbx]
or dil, 47
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
or rbx, 59
setnz dil
and rdx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rdx]
cmovnbe rax, rdi
cmovle rbx, rcx
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
sbb cl, dl
add dl, -99 # instrumentation
not eax
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
test eax, 1561062795
adc bl, al
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 22
cmp bl, 13
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
add rdi, rdx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
sub dl, dl
sub ebx, esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dil
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
inc edx
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
adc si, 20
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
