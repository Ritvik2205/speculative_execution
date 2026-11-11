.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor edx, ebx
sub ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], 10
test bl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdx]
bts ebx, 22
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
mul word ptr [r14 + rax]
xchg cx, bx
cmovle edi, edx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 44
and rdx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
cmovb edi, ebx
sbb bl, al
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], di
cmovnb ebx, edx
and rdx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 24
cmovnb edi, eax
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ebx
cmp di, ax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 58
and rsi, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rsi]
movzx cx, sil
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
xor eax, 181978569
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
cmovb edx, eax
neg rbx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
sbb bx, 66
bt ebx, esi
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 54
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rdi]
cmovnp edx, edx
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rsi]
cmp sil, 88
adc cl, 61
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 74
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 24
sub esi, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
