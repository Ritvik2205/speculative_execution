.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -110 # instrumentation
btr cx, 181
and rcx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rcx
setz bl
btr si, dx
and rdx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rdx]
or al, cl
cmovb rdi, rsi
and rax, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
mov ebx, 675401645
or bl, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv bl
add dl, -78 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
cmovno rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
lea rbx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
btc eax, 220
and rax, 0b1111111111111 # instrumentation
add ax, word ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 0
xchg cl, dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], al
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
or ax, -18131
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rax]
bts edx, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
