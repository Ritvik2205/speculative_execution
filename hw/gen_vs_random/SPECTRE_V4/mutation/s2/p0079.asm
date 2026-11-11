.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, 54
and si, dx
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], -1913246407
and rsi, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rsi], ecx
sub ax, 6579
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], -59
sub rdx, rdx
mov eax, -1056201206
and rdx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rcx], esi
adc al, dl
or edx, edi
or rax, -823069511
adc bl, al
test al, 18
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rbx
xor bx, 59
and rsi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rsi], rbx
and rbx, 0b1111111111111 # instrumentation
movzx rdi, word ptr [r14 + rbx]
movzx rdi, bx
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
sub eax, -494922880
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rdx]
and dil, cl
or rdi, rdx
test dil, -58
sub rax, -1066968986
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
xor ebx, ecx
cmp rsi, 74
and rdx, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
cmp dl, dl
and rdi, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdi], eax
xchg di, bx
imul al
xor ax, -29507
add ecx, 99
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
sub rdx, rsi
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
or dl, -26
and rax, 0b1111111111111 # instrumentation
cmp si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
