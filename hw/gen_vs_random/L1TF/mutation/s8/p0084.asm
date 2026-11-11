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
sub rax, 1806572419
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
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
setns al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rsi]
lea si, qword ptr [rsi]
and rcx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rcx]
and rax, 1163013815
and rbx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rbx]
add dl, dl
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
setp bl
imul bl
adc rsi, rcx
xchg esi, edi
setp dl
test edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
