.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnle edi, eax
cmp bl, 13
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rsi
imul rsi
sub eax, edx
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 44
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 43
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdi], 6
add rbx, rax
and rax, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rax]
btc di, 62
cmovnbe rdx, rdi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rdx
add rax, rbx
add bl, -75 # instrumentation
adc bl, 49
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], dx
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rax
xchg cl, bl
not eax
imul eax
and rsi, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rsi]
sub dl, 43
cmovno edx, eax
test sil, dil
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], -20
cmovb rax, rsi
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdx], esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 93
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
adc sil, bl
and rax, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
and dil, bl
add al, al
cmovnbe rdi, rbx
sbb al, sil
and rsi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
