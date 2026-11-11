.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], ax
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
sub rbx, 70
mov edi, edx
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
and rax, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rax]
test edx, 1891691791
and rax, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
lea rbx, qword ptr [rdi + rdx]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
xor bl, dil
not sil
and rdi, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdi]
lea rbx, qword ptr [rsi + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
