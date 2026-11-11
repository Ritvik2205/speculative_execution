.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dl
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
movzx si, bl
cmovb ebx, eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], ecx
add cl, 119 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rsi]
cmp rcx, 77
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 44
xor al, cl
cmovnbe rax, rsi
imul ebx, edx
add cl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rcx]
dec al
and rdi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 21
and rcx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rcx]
movzx rcx, bl
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rcx]
inc ebx
movzx edx, dl
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
movzx rbx, al
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 89
sub eax, esi
movzx esi, sil
and rbx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rbx], 51
add ax, -13169
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], al
sbb al, 123
xor cl, -85
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsf bx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
mul rbx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
cmp rdi, 72
dec di
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
