.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rdx]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
not al
add cl, 19
and rsi, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rsi]
add cl, bl
and rbx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rbx
sub sil, 45
cmp dl, 64
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
xor dl, cl
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
bt rdi, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
