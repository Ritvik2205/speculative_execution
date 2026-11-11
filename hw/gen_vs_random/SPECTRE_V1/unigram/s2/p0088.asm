.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], eax
movsx dx, bl
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
imul ebx, ebx, 119
add al, 64 # instrumentation
cmovnz dx, ax
test edx, 74
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 118
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], 60
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dil
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], 36
and rsi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rsi], 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
