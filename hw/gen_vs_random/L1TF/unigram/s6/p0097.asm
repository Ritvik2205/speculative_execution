.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cwd
mov dl, 89
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 43
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], al
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rcx
cmp rdx, rax
and rax, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rax], 93
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], cl
jmp .bb_0.1
.bb_0.1:
add al, 112 # instrumentation
cmovnle edx, ebx
and rdx, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rdx]
add al, -84 # instrumentation
setno dil
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], ebx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], bl
and rax, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
