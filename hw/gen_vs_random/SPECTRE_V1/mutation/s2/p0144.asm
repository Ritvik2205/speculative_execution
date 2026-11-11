.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -21522
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], 5
cmovnbe si, si
and rsi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rsi]
mov bl, 59
jnle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdx]
setnz bl
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rax]
sub bl, al
btc dx, 69
lea edx, qword ptr [rax]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
add cl, -29 # instrumentation
lea rax, qword ptr [rdx + rdx + 58362]
xchg rcx, rcx
cmovbe rcx, rdi
add sil, 36
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rsi
or sil, -27
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
