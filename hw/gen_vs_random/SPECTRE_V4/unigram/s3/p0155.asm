.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edi, 34
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], bx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
add al, bl
add dl, -39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], edx
and bx, 95
sub rsi, rcx
and rdx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rbx
and rsi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 84
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], sil
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
movzx eax, sil
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], edx
and rcx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rcx]
add al, 123 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], si
mul ax
or esi, 9
adc dil, dl
sub bl, 17
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rax]
xor dil, cl
xor dx, 19
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rdx
add dl, -94 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rcx]
sub dl, sil
sbb cl, 20
cmovp rdi, rdx
xor dx, cx
xor cx, 62
cmovns dx, bx
bt eax, 84
and rsi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rsi]
xor ebx, 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
