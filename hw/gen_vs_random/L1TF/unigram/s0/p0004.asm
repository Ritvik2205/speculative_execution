.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, cl
bt rdx, rdi
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], edx
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -109
and rdi, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
imul cl
test rax, -866236703
bswap rax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 1 # instrumentation
and edx, dword ptr [r14 + rdi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 80
setno dil
and rbx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rbx], 29
and rcx, 0b1111111111111 # instrumentation
movsx rax, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
