.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg ax
add bl, -93
inc sil
and rdx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or cl, cl
cmp dil, al
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
xor bx, si
setnz dil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
