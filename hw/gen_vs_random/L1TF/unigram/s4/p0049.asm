.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
or al, -57
and dx, si
and rsi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rdi], bx
and rcx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 82
add al, -49 # instrumentation
adc al, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 48
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
add al, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rdi]
xor rax, rcx
cmovo rax, rdi
and rdx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
