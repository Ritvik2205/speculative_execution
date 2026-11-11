.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
cmovnb si, dx
test bx, 70
setz cl
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rcx
xor rax, -2072052278
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
xchg rax, rdi
jmp .bb_0.1
.bb_0.1:
add ebx, 2
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
bts rsi, rsi
and rdi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
