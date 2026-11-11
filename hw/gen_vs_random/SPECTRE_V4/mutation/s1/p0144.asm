.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 92 # instrumentation
cmovnl rdi, rsi
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], -49
movzx edx, cx
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rax], ebx
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and eax, 1913354318
and rcx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rcx]
movzx dx, dl
test bx, dx
test eax, -251558852
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or edi, -64
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
or eax, -612395655
or al, al
and rcx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 1
sub ax, -1908
test bl, -29
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
bt rdi, rdi
adc bl, bl
or al, dl
and rax, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rsi]
sub dil, 65
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
or al, -47
movzx bx, bl
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
btr bx, 42
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and eax, -2001076187
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
