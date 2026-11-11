.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc eax, 1019803307
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
add ax, dx
and dil, -23
and rdi, 0b1111111111111 # instrumentation
and edx, dword ptr [r14 + rdi]
add dl, -91 # instrumentation
cmovl rcx, rax
movzx rcx, ax
movsx ebx, sil
dec rax
sub rdx, 50
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 5
and rsi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rsi]
xor dl, dl
sub eax, -638345541
btr rbx, 18
and rcx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rcx], -79
sub bl, bl
test bl, -29
sub rsi, -104
adc rsi, rdi
and rdx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ebx
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add al, 27 # instrumentation
mov cl, sil
bts ax, si
and rdx, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rsi, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rsi]
cmovno ecx, eax
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
btc ax, 69
add edx, 89
sub rcx, 126
test cl, sil
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], 7
and rsi, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ebx
add rax, rsi
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx esi, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
add ebx, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
