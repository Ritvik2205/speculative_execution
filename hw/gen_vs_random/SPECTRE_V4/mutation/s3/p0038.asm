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
sbb al, -3
cmovns ax, si
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
adc edx, -125
sbb eax, 1482884079
and bl, bl
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rax
and rax, 0b1111111111111 # instrumentation
and cl, al
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
sub rbx, rbx
adc ecx, 55
cmovo edi, ecx
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdi], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -8
btc rcx, rdx
or ax, 27604
dec edi
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 82
xor cl, -73
sub cl, cl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], si
cmovnle rax, rbx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
