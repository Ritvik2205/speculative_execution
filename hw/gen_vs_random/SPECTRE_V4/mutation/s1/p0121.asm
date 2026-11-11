.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, -638345541
xor bl, cl
cmovno esi, edi
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rdi]
xor rax, 944027678
sbb al, 66
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rsi
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
mov cl, dl
and rbx, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rbx]
adc rcx, rax
movzx esi, cx
or bl, bl
add edi, eax
add rax, rcx
movsx edx, bx
and rcx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rcx]
cmp bl, al
bt esi, edx
add cl, 101 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
test sil, 16
and rdi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdi]
xor al, 118
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
adc bl, sil
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
cmovbe edx, ecx
movsx eax, sil
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, edi
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 118
and rdx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], 10
or bx, -33
adc bl, 127
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 43
and rbx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rbx]
xor rbx, -99
mov cl, -38
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], -31
or cx, 59
add dil, 75
imul dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
