.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, dl
inc bl
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], ax
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
cmovns rcx, rbx
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], 101
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
jmp .bb_0.1
.bb_0.1:
test rax, 404297506
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, -2089384489
test edx, 1891691791
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and al, -68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
jmp .bb_0.2
.bb_0.2:
add bl, -52 # instrumentation
not edx
cmovbe rsi, rax
not rcx
setb dil
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], bl
add ax, 116
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], bl
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
cmovo edi, ebx
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
xor eax, -2123070438
and rbx, 0b1111111111111 # instrumentation
sub rax, qword ptr [r14 + rbx]
cmovnz di, cx
and rax, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
