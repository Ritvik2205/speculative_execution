.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovs bx, si
xor rsi, 71
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], dx
sub al, sil
movzx rbx, sil
test bx, 93
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or dil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
xchg ebx, esi
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 71
cmp bl, 123
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
sub di, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
