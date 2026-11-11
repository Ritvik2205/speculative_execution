.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 1 # instrumentation
and rdx, qword ptr [r14 + rcx] # instrumentation
shr rdx, 1 # instrumentation
div qword ptr [r14 + rcx]
cmovb rax, rbx
add cl, 55 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rsi]
xor edx, ecx
setp al
and rcx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rsi]
sub edx, -33
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
xor rax, -2072052278
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
lea si, qword ptr [rdi + rsi + 25]
add dl, -57 # instrumentation
setz al
test eax, edx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
