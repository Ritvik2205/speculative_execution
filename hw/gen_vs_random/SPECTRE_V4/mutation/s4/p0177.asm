.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movzx edx, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdi]
test bx, ax
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 6
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], ecx
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdx], -115
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], -86
sub dl, al
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
xor dx, dx
and rsi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rsi], eax
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
cmovl edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
or edi, -64
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
cmp bx, 113
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dl
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], -75
cmovnbe ecx, eax
cmovle ebx, edx
and rdi, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdi], -9
and al, bl
and di, -65
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], 84
cmovnbe rsi, rdi
xchg ecx, eax
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
movsx rdx, word ptr [r14 + rdi]
movsx dx, al
sub dl, dl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
adc dl, al
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
or bl, -80
mov dl, al
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], -101
add dl, dl
and rax, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
imul bx, bx
and rax, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
