.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 23 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], -15
and rax, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rax
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
mov cx, -22668
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
bts bx, di
add al, 20 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rbx]
cmp cl, dl
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rcx], ebx
test eax, -251558852
sub cl, -32
cmp rbx, rdx
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rsi
xchg ecx, ebx
sub al, 54
and rdi, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
sub al, 86
and edi, edx
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 73
cmp bl, bl
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 3
test edx, ecx
adc rsi, rax
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sbb bl, -79
mul bl
sub al, 0
movsx esi, al
xor rdi, rcx
sbb rdi, rax
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 3
add al, 32 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rcx]
adc ebx, -100
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
