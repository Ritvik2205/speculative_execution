.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -49 # instrumentation
setnb dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
jmp .bb_0.1
.bb_0.1:
neg bl
btr dx, si
and rdx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 27
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmovle di, di
xor rsi, 26
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
