.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdi
lea bx, qword ptr [rdx + rdi + 22131]
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], bx
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
mov al, bl
mov rcx, 87
add dil, -27 # instrumentation
sets dil
mov al, al
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rbx]
setnz sil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and dil, -93
xor al, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
