.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
add bl, -31 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rcx]
xchg al, cl
sbb rax, 1183957102
xchg rsi, rcx
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
xor sil, dil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
btr eax, 47
add al, 104 # instrumentation
mov eax, 48
and rbx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], 8
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
