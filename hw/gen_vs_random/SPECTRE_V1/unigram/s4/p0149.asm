.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add qword ptr [r14 + rax], 69
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], di
sbb dil, 32
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
lea cx, qword ptr [rdx + rax + 99]
dec sil
sub ebx, eax
bts rdx, 8
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], sil
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 43
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], bl
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rsi]
cwd
and rdi, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rcx]
bts rsi, 234
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
