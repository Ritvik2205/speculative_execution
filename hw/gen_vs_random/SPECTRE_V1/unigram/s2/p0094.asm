.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
add al, -53 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rbx], 96
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
cmp dl, dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 35
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], edx
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rdi]
add dl, 95 # instrumentation
cmovnb rdx, rcx
lea ebx, qword ptr [rdi]
and ax, 2806
xor bl, -38
cmovb si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
