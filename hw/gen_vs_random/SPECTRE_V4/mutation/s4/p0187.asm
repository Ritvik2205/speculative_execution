.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mul dx
test rdx, -1074289902
and rdi, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btc qword ptr [r14 + rcx], rcx
cmovnbe rsi, rcx
and bl, -30
bt eax, ebx
imul dx, ax
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
adc dil, 38
test rax, -813666773
and rcx, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dil
cmovle ax, ax
mov al, 90
cmp bl, cl
and rax, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rax]
cmovo ebx, eax
cmp ax, -22704
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
or al, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sub dil, -40
or ax, bx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], -47
cmovs rax, rsi
or al, al
xchg rsi, rax
xchg si, ax
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 1
and rsi, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rsi]
or al, -88
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
btr bx, 42
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
