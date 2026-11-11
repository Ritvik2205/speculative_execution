.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
imul sil
add dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
setz dl
add bl, 92 # instrumentation
sets al
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], rdi
jmp .bb_0.1
.bb_0.1:
movzx dx, dl
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], al
or al, dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 6
imul bx, di, -32
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rbx
cmovz eax, ebx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
setno al
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], -107
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
