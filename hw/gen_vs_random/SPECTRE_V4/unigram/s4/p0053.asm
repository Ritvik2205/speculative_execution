.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg rsi, rdx
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movzx edx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rdi, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
cmp rax, 2052654950
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 36
adc rdi, rcx
test cl, -10
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rdi], rdx
sub bx, si
cmovnl ecx, ebx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rax]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edx
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], esi
cmovnbe rcx, rax
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], ax
xchg sil, dl
not dil
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
bt dx, 213
and rsi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], ebx
and cx, -117
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 79
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], sil
add dil, dil
sub cl, cl
and dl, -11
xor eax, 308288205
adc sil, sil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 30
cmovb cx, bx
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
movsx esi, al
cmovnb cx, ax
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
xor cx, -80
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
xchg ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
