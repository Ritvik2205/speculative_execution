.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, dx
and rax, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
sbb edi, dword ptr [r14 + rdx]
cmovz edi, eax
cmp rax, 2115020203
cmovnbe rbx, rsi
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 5
movsx rbx, dl
add bl, -72
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 19
btc ebx, eax
add cl, -42 # instrumentation
adc dl, dil
add al, 5
and rsi, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rdx
xchg rcx, rax
cmovbe dx, dx
and rdx, 0b1111111111111 # instrumentation
movzx dx, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdi]
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or eax, 1802312508
and rdx, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rdx]
sub dil, -10
sub rsi, 26
cmovnbe rax, rdi
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
cmovnbe rax, rdx
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
cmp al, dl
sub cl, cl
test bl, bl
and rax, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 2
cmovnl rbx, rdi
mov rsi, rax
sbb cl, al
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], -12
and rdi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
and rdi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
