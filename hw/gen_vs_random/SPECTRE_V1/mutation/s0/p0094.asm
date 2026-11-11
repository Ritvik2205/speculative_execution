.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btc qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
and bl, 87
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
jno .bb_0.1
jmp .bb_0.2
.bb_0.1:
add bl, -9 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
cmovbe rdx, rbx
mul cl
add dl, 6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdi]
bts rdi, 229
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], -45
not rbx
xor cl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], 1594154558
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdi], ebx
cmp al, 13
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], cl
cmovs rcx, rcx
cmovnp rdx, rax
lea ecx, qword ptr [rcx]
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
