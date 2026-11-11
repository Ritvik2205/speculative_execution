.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -67 # instrumentation
setz cl
and eax, -1143711697
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
cmp al, bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
lea ebx, qword ptr [rbx + rdx + 53812]
jmp .bb_0.1
.bb_0.1:
add dl, -121 # instrumentation
cmovnp eax, esi
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 4
imul rdi, rcx
adc al, -3
test rax, -866236703
and rax, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], 726281652
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
