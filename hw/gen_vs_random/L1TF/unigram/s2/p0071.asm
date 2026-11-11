.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 6
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
dec bx
and rbx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rbx]
add dl, 47 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rdx]
or rax, 1808026647
and rsi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rsi]
dec si
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], di
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rsi]
sub dl, 41
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rax]
add bl, cl
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
