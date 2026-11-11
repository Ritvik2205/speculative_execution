.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cx, -117
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rdi, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rsi
cmovnz rdi, rax
imul edi, eax
mov al, al
and rcx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rcx], 123
sub bl, dl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
adc ax, 29444
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
neg rax
cmovbe bx, cx
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], -2
cmp rcx, rcx
xor rax, rsi
and rdi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
xor dl, dl
add eax, esi
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
and rdi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
test edx, ecx
adc rsi, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, -98
mul bl
sub al, 54
movsx esi, al
xor rdi, rcx
sbb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 6
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
adc ebx, 66
and rax, 0b1111111111111 # instrumentation
cmovp bx, word ptr [r14 + rax]
dec bl
cmovl cx, cx
cmovs rsi, rdi
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -117
cmovnz cx, si
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], 57
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], -61
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
