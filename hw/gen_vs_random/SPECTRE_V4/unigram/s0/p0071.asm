.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dil, 44
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rcx
and rdi, 0b1111111111111 # instrumentation
and cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 72
test bl, bl
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rcx]
imul bl
xor sil, 37
add rdx, rbx
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
btc rdi, rbx
and rcx, 0b1111111111111 # instrumentation
mov rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
add al, -79 # instrumentation
adc rsi, 90
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
add cx, 51
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 77
imul edx, eax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 38
and cx, -117
movzx ebx, si
and rbx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rbx]
xor rsi, -3
and dil, dil
cmp dil, dl
adc al, dil
or ax, 0b1000000000000000 # instrumentation
bsr ax, ax
and cl, cl
imul cx, si, 43
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rdx
mul dx
btc ebx, esi
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
bts rdx, rdi
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
and dl, cl
imul cx, di
adc rdx, rsi
cmovnle esi, ebx
and rax, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rax]
imul esi
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], eax
mov dl, 81
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
sub rsi, -104
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
