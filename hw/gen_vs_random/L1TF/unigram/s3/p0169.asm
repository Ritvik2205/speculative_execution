.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
neg cl
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
add bl, -92 # instrumentation
setnz dil
setb dil
not cl
add dil, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 7
and rdi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
sub sil, al
imul dx, di, -95
lea ebx, qword ptr [rax + rax + 68]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], cx
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
