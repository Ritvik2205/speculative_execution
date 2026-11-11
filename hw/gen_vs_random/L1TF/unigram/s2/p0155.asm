.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 35 # instrumentation
sets sil
movzx ecx, ax
cmovno rdx, rbx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rbx
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], rdi
sbb rsi, 50
lea eax, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], bx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rcx
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
add dl, 70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rbx]
add cl, -70 # instrumentation
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dil
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], 105
lea di, qword ptr [rdx + rdx + 37]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
