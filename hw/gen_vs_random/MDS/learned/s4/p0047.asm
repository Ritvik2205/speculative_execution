.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -2 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rax]
and al, bl
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edi
and rcx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf eax, eax
and rcx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rcx]
sub cl, 44
and ax, dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
xor eax, 1170472196
jmp .bb_0.2
.bb_0.2:
xor bl, dl
or al, -48
and rdi, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rdi]
test sil, 57
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 11
and al, 126
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
cmovs rax, rbx
xor eax, 73
or rax, 1749358813
and al, 126
xor dl, al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], ax
test bl, 106
btc rbx, rcx
and cl, -22 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
or dl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
and dl, sil
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rsi
or rbx, -124
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rdx]
or sil, -8
and bl, 17
xor eax, 1170472196
and rax, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rax]
cmp ax, 69
test ax, bx
cmovo rsi, rcx
or al, dl
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock bts word ptr [r14 + rax], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
