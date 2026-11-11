.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 0
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
inc cl
xor al, -15
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rdi]
cmovnl rbx, rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
cmovp rbx, rdi
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
or sil, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], 95
cmovs rdi, rbx
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 50
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and dl, al
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 24
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
and dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], cx
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rsi], 93
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
