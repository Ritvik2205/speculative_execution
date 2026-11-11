.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rcx, 9
test dl, 19
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
imul cl
and rbx, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rdx]
adc dx, 60
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi], 19
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
test dl, bl
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 4
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
sub al, al
inc cx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
test rax, -331426050
or sil, cl
movzx bx, al
sbb bl, 57
and dil, 96
add dl, 31 # instrumentation
cmovnl si, si
and rax, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rax]
mov dil, -118
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rbx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock bts dword ptr [r14 + rcx], ecx
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 29
and rax, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rcx]
sub edi, 1
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 32
add dil, -75 # instrumentation
adc dil, 61
and rcx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rcx], 34
and rcx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rcx]
sub bl, 17
cmovz esi, esi
add cl, cl
test bx, -1599
add dl, 41
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 1
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
add dl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
xor dx, 71
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 100
cmp bl, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
