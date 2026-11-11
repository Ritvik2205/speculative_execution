.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 4
inc rsi
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], dl
mov cl, cl
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -117
neg rdi
adc cl, al
and rsi, 0b1111111111111 # instrumentation
imul word ptr [r14 + rsi]
test al, dil
and rdi, 45
imul esi, edx
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 5
test dl, -125
and rbx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rbx]
add rsi, 68
mov cl, bl
test rbx, 1219566903
or si, 85
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
cmp dx, di
cmovp di, di
or al, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sub dil, 35
or ax, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 19
cmovs rax, rsi
or al, al
xchg rsi, rax
xchg si, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
or al, -50
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
btr bx, 11
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, -1948401947
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], -86
btc esi, 63
sub rbx, 101
cmovnb di, ax
and al, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
