.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp dx, si
and rsi, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rsi]
mov rbx, rcx
not ax
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], 55
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], 97
sub dil, -10
cmovns cx, si
cmovo rcx, rax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
cmp al, 114
movzx edx, sil
and rbx, 110
cmovp bx, ax
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
adc rdi, rax
and rax, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rdx
cmovle edx, ecx
cmovb eax, eax
xchg cx, dx
mov rcx, 5862286138240743445
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], bl
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
cmovle ecx, edi
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
adc al, bl
test bl, dl
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rdi
xchg rdx, rax
add sil, cl
and rdi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdi]
and dx, 1
cmovnz eax, esi
add dl, -94 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rsi]
sbb rsi, -115
bts rcx, rcx
or di, 0b1000000000000000 # instrumentation
bsr ax, di
sub rdi, rax
test sil, sil
xor cl, sil
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
