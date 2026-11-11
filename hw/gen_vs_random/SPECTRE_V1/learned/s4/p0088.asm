.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
xor rsi, 73
bts rsi, 234
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], ebx
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, 7 # instrumentation
cmovnl esi, ecx
and rcx, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rcx]
lea cx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
imul rdi, rdi, 67
add al, -42 # instrumentation
lea edx, qword ptr [rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], eax
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
cmovno ebx, edx
jb .bb_0.2
jmp .exit_0
.bb_0.2:
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
imul ax, cx, 25
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 59
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
add dl, 48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and bl, dl
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 0
cmovnbe si, cx
test bl, sil
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
