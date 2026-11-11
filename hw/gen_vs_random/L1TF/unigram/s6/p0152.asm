.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
add al, dl
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and ax, 7954
or si, 95
bswap rdi
add dil, 6 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
sub si, dx
sub dx, 34
and rbx, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
