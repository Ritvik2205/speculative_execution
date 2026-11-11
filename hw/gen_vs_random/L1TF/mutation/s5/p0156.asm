.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -97 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp si, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rsi]
cmovl ecx, edi
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edi
lea ebx, qword ptr [rdi + rdi]
jmp .bb_0.1
.bb_0.1:
xor eax, -603819833
and dl, dl
and rsi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and rbx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rbx]
xor cl, al
and edi, ecx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rcx
xchg si, di
jmp .bb_0.2
.bb_0.2:
add dl, 125 # instrumentation
cmovbe rdi, rdi
setbe dil
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
lea rsi, qword ptr [rbx + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 61
or di, 0b1000000000000000 # instrumentation
bsf cx, di
add dl, 97 # instrumentation
cmovnbe edx, edi
and rbx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rax]
cmp al, cl
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
sub ax, -27107
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdx
and ax, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
