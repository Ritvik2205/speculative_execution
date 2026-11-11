.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
lea rdi, qword ptr [rdx + rax]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], cl
cmp dl, al
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], bx
cmp cx, 88
or dil, dl
and rcx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rsi
cmovnle rax, rax
or si, 19
add bl, 89 # instrumentation
sbb dl, al
cmovno eax, eax
lea rsi, qword ptr [rsi + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], dx
add dil, al
add dl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
