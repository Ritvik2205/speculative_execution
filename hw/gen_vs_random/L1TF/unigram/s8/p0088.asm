.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rax]
test eax, edi
and dil, al
and rdi, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 50
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], sil
add bl, 67 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rbx]
xor edx, edi
btr rax, 31
or rax, 1808026647
and rdx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rdx], 40
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], 30
xchg rcx, rcx
add dl, 126 # instrumentation
setnb bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
