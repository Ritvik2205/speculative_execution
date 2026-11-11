.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub al, -75
and rax, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rax]
or al, -5
add cl, dil
test al, dl
setbe al
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 112
add cl, 72 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 31
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
